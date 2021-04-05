package com.flores.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.flores.feign.clients.ImagenClientRest;
import com.flores.feign.models.Imagen;
import com.flores.model.Evento;
import com.flores.model.dto.EventoDto;
import com.flores.repository.EventoRepository;
import com.flores.util.ImageProcessing;

@RestController
@RequestMapping("/evento")
public class EventoController {
	
	@Autowired
	private EventoRepository eventoRepository;
	
	@Autowired
	private ImagenClientRest imagenClientRest;
	
	private ImageProcessing imageProcessing = new ImageProcessing();
	
	@GetMapping("/listByTipoActividad/{id}")
	private List<Evento> listByTipoActividad(@PathVariable int id){
		List<Evento> evento = eventoRepository.findAllByTipoEventoId(id);
		for(Evento e: evento){
			List<Imagen> dato = imagenClientRest.listByEvento(e.getId()).orElse(null);
			e.setImagen(dato);
		}
		return evento;
	}
	
	@GetMapping("/listAll")
	private List<Evento> listByImagen(){
		List<Evento> evento = eventoRepository.findAll();
		for(Evento e: evento){
			List<Imagen> dato = imagenClientRest.listByEvento(e.getId()).orElse(null);
			e.setImagen(dato);
		}
		return evento;
	}

	@GetMapping("/listar")
	private List<Evento> show(){
		return eventoRepository.findAll();
	}
	
	@GetMapping(path = "/{id}")
	private Optional<Evento> show(@PathVariable int id) {
		return eventoRepository.findById(id);
	}
	
	@PostMapping(path="/nuevo")
	private Evento create(@RequestBody EventoDto evento,@RequestBody int personaId, @RequestParam("image") MultipartFile file) throws IOException{
		Instant date = Instant.now();
		//
		Imagen imagen = new Imagen();
		imageProcessing.saveFile(file);
		imagen.setEventoId(evento.getId());
		imagen.setCreatedAt(Timestamp.from(date));
		imagen.setUpdatedAt(Timestamp.from(date));
		imagen.setRemove(false);
		imagen.setEstado(1);
		imagen.setUrl(imageProcessing.getRuta());
		imagen.setPersonaId(personaId);
		imagenClientRest.createImage(imagen);
		//
		Evento eventoNow = new Evento();
		eventoNow.setTitulo(evento.getTitulo());
		eventoNow.setDescripcion(evento.getDescripcion());
		eventoNow.setFechaInicio(evento.getFechaInicio());
		eventoNow.setFechaTermino(evento.getFechaTermino());
		eventoNow.setDetalle(evento.getDetalle());
		eventoNow.setEstado(evento.isEstado());
		eventoNow.setCosto(evento.getCosto());
		eventoNow.setDescuentoAsociado(evento.getDescuentoAsociado());
		eventoNow.setCreatedAt(Timestamp.from(date));
		eventoNow.setUpdatedAt(Timestamp.from(date));
		eventoNow.setRemove(evento.isRemove());
		eventoNow.setUsuarioId(evento.getUsuarioId());
		eventoNow.setIdSitEvento(evento.getIdSitEvento());
		eventoNow.setIdInstructor(evento.getIdInstructor());
		eventoNow.setTipoEventoId(evento.getTipoEventoId());
		return eventoRepository.save(eventoNow);
	}
	
	@PutMapping(path ="/{id}")
	private Evento update(@RequestBody EventoDto evento,@PathVariable int id) {
		Evento eventoNow = eventoRepository.findById(id).orElse(null);
		Instant date = Instant.now();
		eventoNow.setTitulo(evento.getTitulo());
		eventoNow.setDescripcion(evento.getDescripcion());
		eventoNow.setFechaInicio(evento.getFechaInicio());
		eventoNow.setFechaTermino(evento.getFechaTermino());
		eventoNow.setDetalle(evento.getDetalle());
		eventoNow.setEstado(evento.isEstado());
		eventoNow.setCosto(evento.getCosto());
		eventoNow.setDescuentoAsociado(evento.getDescuentoAsociado());
		eventoNow.setUpdatedAt(Timestamp.from(date));
		eventoNow.setRemove(evento.isRemove());
		eventoNow.setUsuarioId(evento.getUsuarioId());
		eventoNow.setIdSitEvento(evento.getIdSitEvento());
		eventoNow.setIdInstructor(evento.getIdInstructor());
		eventoNow.setTipoEventoId(evento.getTipoEventoId());
		
		return eventoRepository.save(eventoNow);
	}
	
	@DeleteMapping("/{id}")
	private void delete(@PathVariable int id) {
		eventoRepository.deleteById(id);
	}
}
