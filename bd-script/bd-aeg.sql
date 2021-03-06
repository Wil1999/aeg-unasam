PGDMP     "    !        
        y            dbageunasam    11.9    11.9 G   ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?           1262    50414    dbageunasam    DATABASE     ?   CREATE DATABASE dbageunasam WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE dbageunasam;
             postgres    false                        2615    50418    asociado    SCHEMA        CREATE SCHEMA asociado;
    DROP SCHEMA asociado;
             postgres    false                        2615    50415    evento    SCHEMA        CREATE SCHEMA evento;
    DROP SCHEMA evento;
             postgres    false                        2615    50416    general    SCHEMA        CREATE SCHEMA general;
    DROP SCHEMA general;
             postgres    false                        2615    50419    gestion_usuario    SCHEMA        CREATE SCHEMA gestion_usuario;
    DROP SCHEMA gestion_usuario;
             postgres    false            
            2615    50417    pagina    SCHEMA        CREATE SCHEMA pagina;
    DROP SCHEMA pagina;
             postgres    false                       1259    50673    asociado    TABLE     ?   CREATE TABLE asociado.asociado (
    id integer NOT NULL,
    persona_id integer NOT NULL,
    numero integer NOT NULL,
    fecha_incorporacion date NOT NULL,
    estado boolean NOT NULL,
    remove boolean NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE asociado.asociado;
       asociado         postgres    false    8                       1259    50671    asociado_id_seq    SEQUENCE     ?   CREATE SEQUENCE asociado.asociado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE asociado.asociado_id_seq;
       asociado       postgres    false    263    8            ?           0    0    asociado_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE asociado.asociado_id_seq OWNED BY asociado.asociado.id;
            asociado       postgres    false    262            	           1259    50681    consejo    TABLE     ?   CREATE TABLE asociado.consejo (
    id integer NOT NULL,
    id_periodo integer NOT NULL,
    id_asociado integer NOT NULL,
    cargo_id integer NOT NULL,
    flag_tipo character varying(255) NOT NULL
);
    DROP TABLE asociado.consejo;
       asociado         postgres    false    8                       1259    50679    consejo_id_seq    SEQUENCE     ?   CREATE SEQUENCE asociado.consejo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE asociado.consejo_id_seq;
       asociado       postgres    false    265    8            ?           0    0    consejo_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE asociado.consejo_id_seq OWNED BY asociado.consejo.id;
            asociado       postgres    false    264                       1259    50689    dato_academico    TABLE     N  CREATE TABLE asociado.dato_academico (
    id integer NOT NULL,
    grado_acad_id integer NOT NULL,
    especialidad_id integer NOT NULL,
    fecha_emision date NOT NULL,
    fecha_ingreso date NOT NULL,
    fecha_termino date NOT NULL,
    persona_id integer NOT NULL,
    remove boolean NOT NULL,
    usuario_id integer NOT NULL
);
 $   DROP TABLE asociado.dato_academico;
       asociado         postgres    false    8            
           1259    50687    dato_academico_id_seq    SEQUENCE     ?   CREATE SEQUENCE asociado.dato_academico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE asociado.dato_academico_id_seq;
       asociado       postgres    false    267    8            ?           0    0    dato_academico_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE asociado.dato_academico_id_seq OWNED BY asociado.dato_academico.id;
            asociado       postgres    false    266                       1259    50665    dato_laboral    TABLE     `  CREATE TABLE asociado.dato_laboral (
    id integer NOT NULL,
    institucion_id integer NOT NULL,
    cargo character varying(32) NOT NULL,
    sector_id integer NOT NULL,
    tipo_laboral_id integer NOT NULL,
    persona_id integer NOT NULL,
    estado character varying(255) NOT NULL,
    remove boolean NOT NULL,
    usuario_id integer NOT NULL
);
 "   DROP TABLE asociado.dato_laboral;
       asociado         postgres    false    8                       1259    50663    dato_laboral_id_seq    SEQUENCE     ?   CREATE SEQUENCE asociado.dato_laboral_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE asociado.dato_laboral_id_seq;
       asociado       postgres    false    8    261            ?           0    0    dato_laboral_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE asociado.dato_laboral_id_seq OWNED BY asociado.dato_laboral.id;
            asociado       postgres    false    260            ?            1259    50478 
   asistencia    TABLE     ?   CREATE TABLE evento.asistencia (
    id integer NOT NULL,
    id_persona_evento integer NOT NULL,
    id_crono_evento integer NOT NULL,
    flag_asiste boolean NOT NULL,
    usuario_id integer NOT NULL,
    id_inscripcion integer NOT NULL
);
    DROP TABLE evento.asistencia;
       evento         postgres    false    11            ?            1259    50476    asistencia_id_seq    SEQUENCE     ?   CREATE SEQUENCE evento.asistencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE evento.asistencia_id_seq;
       evento       postgres    false    215    11            ?           0    0    asistencia_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE evento.asistencia_id_seq OWNED BY evento.asistencia.id;
            evento       postgres    false    214            ?            1259    50430    cronograma_evento    TABLE     X  CREATE TABLE evento.cronograma_evento (
    id integer NOT NULL,
    id_evento integer NOT NULL,
    id_dia_semana integer NOT NULL,
    fecha date NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    remove boolean NOT NULL,
    descripcion character varying(255) NOT NULL
);
 %   DROP TABLE evento.cronograma_evento;
       evento         postgres    false    11            ?            1259    50428    cronograma_evento_id_seq    SEQUENCE     ?   CREATE SEQUENCE evento.cronograma_evento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE evento.cronograma_evento_id_seq;
       evento       postgres    false    11    203            ?           0    0    cronograma_evento_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE evento.cronograma_evento_id_seq OWNED BY evento.cronograma_evento.id;
            evento       postgres    false    202            ?            1259    50422 
   dia_semana    TABLE     m   CREATE TABLE evento.dia_semana (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);
    DROP TABLE evento.dia_semana;
       evento         postgres    false    11            ?            1259    50420    dia_semana_id_seq    SEQUENCE     ?   CREATE SEQUENCE evento.dia_semana_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE evento.dia_semana_id_seq;
       evento       postgres    false    11    201            ?           0    0    dia_semana_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE evento.dia_semana_id_seq OWNED BY evento.dia_semana.id;
            evento       postgres    false    200            ?            1259    50446    evento    TABLE     g  CREATE TABLE evento.evento (
    id integer NOT NULL,
    tipo_evento_id integer NOT NULL,
    titulo character varying(64) NOT NULL,
    descripcion character varying(255) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_termino date NOT NULL,
    detalle date NOT NULL,
    estado boolean NOT NULL,
    costo integer NOT NULL,
    descuento_asociado integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    remove boolean NOT NULL,
    usuario_id integer NOT NULL,
    id_sit_evento integer NOT NULL,
    id_instructor integer NOT NULL
);
    DROP TABLE evento.evento;
       evento         postgres    false    11            ?            1259    50444    evento_id_seq    SEQUENCE     ?   CREATE SEQUENCE evento.evento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE evento.evento_id_seq;
       evento       postgres    false    11    207            ?           0    0    evento_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE evento.evento_id_seq OWNED BY evento.evento.id;
            evento       postgres    false    206            ?            1259    50454    inscripcion    TABLE     ~  CREATE TABLE evento.inscripcion (
    id integer NOT NULL,
    persona_id integer NOT NULL,
    evento_id integer NOT NULL,
    remove boolean NOT NULL,
    flag_entrega_certificado boolean NOT NULL,
    nota character varying(255) NOT NULL,
    record_asistencia integer NOT NULL,
    usuario_id integer NOT NULL,
    id_situacion_insc integer NOT NULL,
    fecha_registro date
);
    DROP TABLE evento.inscripcion;
       evento         postgres    false    11            ?            1259    50452    inscripcion_id_seq    SEQUENCE     ?   CREATE SEQUENCE evento.inscripcion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE evento.inscripcion_id_seq;
       evento       postgres    false    11    209            ?           0    0    inscripcion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE evento.inscripcion_id_seq OWNED BY evento.inscripcion.id;
            evento       postgres    false    208            ?            1259    50486 
   instructor    TABLE     ]   CREATE TABLE evento.instructor (
    id integer NOT NULL,
    id_persona integer NOT NULL
);
    DROP TABLE evento.instructor;
       evento         postgres    false    11            ?            1259    50484    instructor_id_seq    SEQUENCE     ?   CREATE SEQUENCE evento.instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE evento.instructor_id_seq;
       evento       postgres    false    11    217            ?           0    0    instructor_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE evento.instructor_id_seq OWNED BY evento.instructor.id;
            evento       postgres    false    216            ?            1259    50462    situacion_evento    TABLE     ?   CREATE TABLE evento.situacion_evento (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    estado boolean NOT NULL
);
 $   DROP TABLE evento.situacion_evento;
       evento         postgres    false    11            ?            1259    50460    situacion_evento_id_seq    SEQUENCE     ?   CREATE SEQUENCE evento.situacion_evento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE evento.situacion_evento_id_seq;
       evento       postgres    false    211    11            ?           0    0    situacion_evento_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE evento.situacion_evento_id_seq OWNED BY evento.situacion_evento.id;
            evento       postgres    false    210            ?            1259    50470    situacion_inscripcion    TABLE     ?   CREATE TABLE evento.situacion_inscripcion (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    estado boolean NOT NULL
);
 )   DROP TABLE evento.situacion_inscripcion;
       evento         postgres    false    11            ?            1259    50468    situacion_inscripcion_id_seq    SEQUENCE     ?   CREATE SEQUENCE evento.situacion_inscripcion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE evento.situacion_inscripcion_id_seq;
       evento       postgres    false    11    213            ?           0    0    situacion_inscripcion_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE evento.situacion_inscripcion_id_seq OWNED BY evento.situacion_inscripcion.id;
            evento       postgres    false    212            ?            1259    50438    tipo_evento    TABLE     ?   CREATE TABLE evento.tipo_evento (
    id integer NOT NULL,
    nombre character varying(32) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    estado integer NOT NULL
);
    DROP TABLE evento.tipo_evento;
       evento         postgres    false    11            ?            1259    50436    tipo_evento_id_seq    SEQUENCE     ?   CREATE SEQUENCE evento.tipo_evento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE evento.tipo_evento_id_seq;
       evento       postgres    false    11    205            ?           0    0    tipo_evento_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE evento.tipo_evento_id_seq OWNED BY evento.tipo_evento.id;
            evento       postgres    false    204            ?            1259    50526    cargo    TABLE     i   CREATE TABLE general.cargo (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);
    DROP TABLE general.cargo;
       general         postgres    false    6            ?            1259    50524    cargo_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.cargo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE general.cargo_id_seq;
       general       postgres    false    6    227            ?           0    0    cargo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE general.cargo_id_seq OWNED BY general.cargo.id;
            general       postgres    false    226            ?            1259    50510    centro_estudio    TABLE     ?   CREATE TABLE general.centro_estudio (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    flag_unasam integer NOT NULL
);
 #   DROP TABLE general.centro_estudio;
       general         postgres    false    6            ?            1259    50508    centro_estudio_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.centro_estudio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE general.centro_estudio_id_seq;
       general       postgres    false    6    223            ?           0    0    centro_estudio_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE general.centro_estudio_id_seq OWNED BY general.centro_estudio.id;
            general       postgres    false    222            ?            1259    50625    correo    TABLE     ?   CREATE TABLE general.correo (
    id integer NOT NULL,
    id_tipo_correo integer NOT NULL,
    id_persona integer NOT NULL,
    usuario_id integer NOT NULL,
    correo character varying(120)
);
    DROP TABLE general.correo;
       general         postgres    false    6            ?            1259    50623    correo_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.correo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE general.correo_id_seq;
       general       postgres    false    251    6            ?           0    0    correo_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE general.correo_id_seq OWNED BY general.correo.id;
            general       postgres    false    250            ?            1259    50502    especialidad    TABLE     ?   CREATE TABLE general.especialidad (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    centro_estudio_id integer NOT NULL
);
 !   DROP TABLE general.especialidad;
       general         postgres    false    6            ?            1259    50500    especialidad_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.especialidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE general.especialidad_id_seq;
       general       postgres    false    221    6            ?           0    0    especialidad_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE general.especialidad_id_seq OWNED BY general.especialidad.id;
            general       postgres    false    220            ?            1259    50494    grado_academico    TABLE     s   CREATE TABLE general.grado_academico (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);
 $   DROP TABLE general.grado_academico;
       general         postgres    false    6            ?            1259    50492    grado_academico_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.grado_academico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE general.grado_academico_id_seq;
       general       postgres    false    6    219            ?           0    0    grado_academico_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE general.grado_academico_id_seq OWNED BY general.grado_academico.id;
            general       postgres    false    218            ?            1259    50550    institucion    TABLE     ?   CREATE TABLE general.institucion (
    id integer NOT NULL,
    ruc integer NOT NULL,
    descripcion character varying(255) NOT NULL
);
     DROP TABLE general.institucion;
       general         postgres    false    6            ?            1259    50548    institucion_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.institucion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE general.institucion_id_seq;
       general       postgres    false    6    233            ?           0    0    institucion_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE general.institucion_id_seq OWNED BY general.institucion.id;
            general       postgres    false    232            ?            1259    50518    periodo    TABLE     c   CREATE TABLE general.periodo (
    id integer NOT NULL,
    anio character varying(20) NOT NULL
);
    DROP TABLE general.periodo;
       general         postgres    false    6            ?            1259    50516    periodo_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.periodo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE general.periodo_id_seq;
       general       postgres    false    6    225            ?           0    0    periodo_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE general.periodo_id_seq OWNED BY general.periodo.id;
            general       postgres    false    224            ?            1259    50582    persona    TABLE     ?  CREATE TABLE general.persona (
    id integer NOT NULL,
    dni character varying(255) NOT NULL,
    apellido_paterno character varying(255) NOT NULL,
    apellido_materno character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    id_ubgdis_lugar_nac integer NOT NULL,
    id_ubgdis_domicilio integer NOT NULL,
    direccion character varying(255) NOT NULL,
    fecha_nacimiento date NOT NULL
);
    DROP TABLE general.persona;
       general         postgres    false    6            ?            1259    50580    persona_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE general.persona_id_seq;
       general       postgres    false    241    6            ?           0    0    persona_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE general.persona_id_seq OWNED BY general.persona.id;
            general       postgres    false    240            ?            1259    50542    sector    TABLE     j   CREATE TABLE general.sector (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);
    DROP TABLE general.sector;
       general         postgres    false    6            ?            1259    50540    sector_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.sector_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE general.sector_id_seq;
       general       postgres    false    231    6            ?           0    0    sector_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE general.sector_id_seq OWNED BY general.sector.id;
            general       postgres    false    230            ?            1259    50617    telefono    TABLE     ?   CREATE TABLE general.telefono (
    id integer NOT NULL,
    num_telefono character varying(16) NOT NULL,
    id_tipo_telefono integer NOT NULL,
    id_tipo_operador integer NOT NULL,
    id_persona integer NOT NULL
);
    DROP TABLE general.telefono;
       general         postgres    false    6            ?            1259    50615    telefono_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.telefono_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE general.telefono_id_seq;
       general       postgres    false    249    6            ?           0    0    telefono_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE general.telefono_id_seq OWNED BY general.telefono.id;
            general       postgres    false    248            ?            1259    50593    tipo_correo    TABLE     h   CREATE TABLE general.tipo_correo (
    id integer NOT NULL,
    tipo character varying(255) NOT NULL
);
     DROP TABLE general.tipo_correo;
       general         postgres    false    6            ?            1259    50591    tipo_correo_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.tipo_correo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE general.tipo_correo_id_seq;
       general       postgres    false    243    6            ?           0    0    tipo_correo_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE general.tipo_correo_id_seq OWNED BY general.tipo_correo.id;
            general       postgres    false    242            ?            1259    50534    tipo_laboral    TABLE     p   CREATE TABLE general.tipo_laboral (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);
 !   DROP TABLE general.tipo_laboral;
       general         postgres    false    6            ?            1259    50532    tipo_laboral_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.tipo_laboral_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE general.tipo_laboral_id_seq;
       general       postgres    false    229    6            ?           0    0    tipo_laboral_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE general.tipo_laboral_id_seq OWNED BY general.tipo_laboral.id;
            general       postgres    false    228            ?            1259    50601    tipo_operador    TABLE     m   CREATE TABLE general.tipo_operador (
    id integer NOT NULL,
    operador character varying(64) NOT NULL
);
 "   DROP TABLE general.tipo_operador;
       general         postgres    false    6            ?            1259    50599    tipo_operador_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.tipo_operador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE general.tipo_operador_id_seq;
       general       postgres    false    6    245            ?           0    0    tipo_operador_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE general.tipo_operador_id_seq OWNED BY general.tipo_operador.id;
            general       postgres    false    244            ?            1259    50609    tipo_telefono    TABLE     r   CREATE TABLE general.tipo_telefono (
    id integer NOT NULL,
    tipo_telefono character varying(64) NOT NULL
);
 "   DROP TABLE general.tipo_telefono;
       general         postgres    false    6            ?            1259    50607    tipo_telefono_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.tipo_telefono_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE general.tipo_telefono_id_seq;
       general       postgres    false    6    247            ?           0    0    tipo_telefono_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE general.tipo_telefono_id_seq OWNED BY general.tipo_telefono.id;
            general       postgres    false    246            ?            1259    50558    ubigeo_departamento    TABLE     q   CREATE TABLE general.ubigeo_departamento (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
 (   DROP TABLE general.ubigeo_departamento;
       general         postgres    false    6            ?            1259    50556    ubigeo_departamento_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.ubigeo_departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE general.ubigeo_departamento_id_seq;
       general       postgres    false    235    6            ?           0    0    ubigeo_departamento_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE general.ubigeo_departamento_id_seq OWNED BY general.ubigeo_departamento.id;
            general       postgres    false    234            ?            1259    50574    ubigeo_distrito    TABLE     ?   CREATE TABLE general.ubigeo_distrito (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    id_ubi_provincia integer NOT NULL
);
 $   DROP TABLE general.ubigeo_distrito;
       general         postgres    false    6            ?            1259    50572    ubigeo_distrito_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.ubigeo_distrito_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE general.ubigeo_distrito_id_seq;
       general       postgres    false    6    239            ?           0    0    ubigeo_distrito_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE general.ubigeo_distrito_id_seq OWNED BY general.ubigeo_distrito.id;
            general       postgres    false    238            ?            1259    50566    ubigeo_provincia    TABLE     ?   CREATE TABLE general.ubigeo_provincia (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    id_ubi_departamento integer NOT NULL
);
 %   DROP TABLE general.ubigeo_provincia;
       general         postgres    false    6            ?            1259    50564    ubigeo_provincia_id_seq    SEQUENCE     ?   CREATE SEQUENCE general.ubigeo_provincia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE general.ubigeo_provincia_id_seq;
       general       postgres    false    6    237            ?           0    0    ubigeo_provincia_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE general.ubigeo_provincia_id_seq OWNED BY general.ubigeo_provincia.id;
            general       postgres    false    236                       1259    50729    menu    TABLE     ?   CREATE TABLE gestion_usuario.menu (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    icono character varying(64) NOT NULL,
    url character varying(64) NOT NULL
);
 !   DROP TABLE gestion_usuario.menu;
       gestion_usuario         postgres    false    4                       1259    50727    menu_id_seq    SEQUENCE     ?   CREATE SEQUENCE gestion_usuario.menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE gestion_usuario.menu_id_seq;
       gestion_usuario       postgres    false    277    4            ?           0    0    menu_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE gestion_usuario.menu_id_seq OWNED BY gestion_usuario.menu.id;
            gestion_usuario       postgres    false    276                       1259    50713    roles    TABLE     q   CREATE TABLE gestion_usuario.roles (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL
);
 "   DROP TABLE gestion_usuario.roles;
       gestion_usuario         postgres    false    4                       1259    50711    roles_id_seq    SEQUENCE     ?   CREATE SEQUENCE gestion_usuario.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE gestion_usuario.roles_id_seq;
       gestion_usuario       postgres    false    4    273            ?           0    0    roles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE gestion_usuario.roles_id_seq OWNED BY gestion_usuario.roles.id;
            gestion_usuario       postgres    false    272                       1259    50721    usu_rol_menu    TABLE     ?   CREATE TABLE gestion_usuario.usu_rol_menu (
    id integer NOT NULL,
    id_usuario_rol integer NOT NULL,
    id_menu integer NOT NULL,
    estado boolean NOT NULL
);
 )   DROP TABLE gestion_usuario.usu_rol_menu;
       gestion_usuario         postgres    false    4                       1259    50719    usu_rol_menu_id_seq    SEQUENCE     ?   CREATE SEQUENCE gestion_usuario.usu_rol_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE gestion_usuario.usu_rol_menu_id_seq;
       gestion_usuario       postgres    false    4    275            ?           0    0    usu_rol_menu_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE gestion_usuario.usu_rol_menu_id_seq OWNED BY gestion_usuario.usu_rol_menu.id;
            gestion_usuario       postgres    false    274                       1259    50697    usuario    TABLE     ?   CREATE TABLE gestion_usuario.usuario (
    id integer NOT NULL,
    id_persona integer NOT NULL,
    user_name character varying(16) NOT NULL,
    pass character varying(64) NOT NULL,
    estado boolean,
    remove boolean
);
 $   DROP TABLE gestion_usuario.usuario;
       gestion_usuario         postgres    false    4                       1259    50695    usuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE gestion_usuario.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE gestion_usuario.usuario_id_seq;
       gestion_usuario       postgres    false    269    4            ?           0    0    usuario_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE gestion_usuario.usuario_id_seq OWNED BY gestion_usuario.usuario.id;
            gestion_usuario       postgres    false    268                       1259    50705    usuario_roles    TABLE     ?   CREATE TABLE gestion_usuario.usuario_roles (
    id integer NOT NULL,
    id_usuario integer NOT NULL,
    id_roles integer NOT NULL
);
 *   DROP TABLE gestion_usuario.usuario_roles;
       gestion_usuario         postgres    false    4                       1259    50703    usuario_roles_id_seq    SEQUENCE     ?   CREATE SEQUENCE gestion_usuario.usuario_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE gestion_usuario.usuario_roles_id_seq;
       gestion_usuario       postgres    false    4    271            ?           0    0    usuario_roles_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE gestion_usuario.usuario_roles_id_seq OWNED BY gestion_usuario.usuario_roles.id;
            gestion_usuario       postgres    false    270                       1259    50937    autor    TABLE     b   CREATE TABLE pagina.autor (
    id integer NOT NULL,
    nombre character varying(64) NOT NULL
);
    DROP TABLE pagina.autor;
       pagina         postgres    false    10                       1259    50657    banner    TABLE     ?  CREATE TABLE pagina.banner (
    id integer NOT NULL,
    titulo character varying(64) NOT NULL,
    descripcion character varying(255) NOT NULL,
    url character varying(32) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    estado integer NOT NULL,
    usuario_id integer NOT NULL,
    remove boolean NOT NULL
);
    DROP TABLE pagina.banner;
       pagina         postgres    false    10                       1259    50655    banner_id_seq    SEQUENCE     ?   CREATE SEQUENCE pagina.banner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE pagina.banner_id_seq;
       pagina       postgres    false    10    259            ?           0    0    banner_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE pagina.banner_id_seq OWNED BY pagina.banner.id;
            pagina       postgres    false    258            ?            1259    50633 	   documento    TABLE     ?   CREATE TABLE pagina.documento (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    url character varying(32) NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE pagina.documento;
       pagina         postgres    false    10            ?            1259    50631    documento_id_seq    SEQUENCE     ?   CREATE SEQUENCE pagina.documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE pagina.documento_id_seq;
       pagina       postgres    false    253    10            ?           0    0    documento_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE pagina.documento_id_seq OWNED BY pagina.documento.id;
            pagina       postgres    false    252                       1259    50649    imagen    TABLE     K  CREATE TABLE pagina.imagen (
    id integer NOT NULL,
    url character varying(32) NOT NULL,
    noticia_id integer,
    evento_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    estado integer NOT NULL,
    persona_id integer,
    remove boolean NOT NULL
);
    DROP TABLE pagina.imagen;
       pagina         postgres    false    10                        1259    50647    imagen_id_seq    SEQUENCE     ?   CREATE SEQUENCE pagina.imagen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE pagina.imagen_id_seq;
       pagina       postgres    false    10    257            ?           0    0    imagen_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE pagina.imagen_id_seq OWNED BY pagina.imagen.id;
            pagina       postgres    false    256            ?            1259    50641    noticia    TABLE     ?  CREATE TABLE pagina.noticia (
    id integer NOT NULL,
    titulo character varying(64) NOT NULL,
    descripcion character varying(255) NOT NULL,
    estado boolean NOT NULL,
    fecha_publicacion date NOT NULL,
    id_autor integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    usuario_id integer NOT NULL,
    remove boolean NOT NULL
);
    DROP TABLE pagina.noticia;
       pagina         postgres    false    10            ?            1259    50639    noticia_id_seq    SEQUENCE     ?   CREATE SEQUENCE pagina.noticia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE pagina.noticia_id_seq;
       pagina       postgres    false    255    10            ?           0    0    noticia_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE pagina.noticia_id_seq OWNED BY pagina.noticia.id;
            pagina       postgres    false    254            ?           2604    50676    asociado id    DEFAULT     n   ALTER TABLE ONLY asociado.asociado ALTER COLUMN id SET DEFAULT nextval('asociado.asociado_id_seq'::regclass);
 <   ALTER TABLE asociado.asociado ALTER COLUMN id DROP DEFAULT;
       asociado       postgres    false    263    262    263            ?           2604    50684 
   consejo id    DEFAULT     l   ALTER TABLE ONLY asociado.consejo ALTER COLUMN id SET DEFAULT nextval('asociado.consejo_id_seq'::regclass);
 ;   ALTER TABLE asociado.consejo ALTER COLUMN id DROP DEFAULT;
       asociado       postgres    false    265    264    265            ?           2604    50692    dato_academico id    DEFAULT     z   ALTER TABLE ONLY asociado.dato_academico ALTER COLUMN id SET DEFAULT nextval('asociado.dato_academico_id_seq'::regclass);
 B   ALTER TABLE asociado.dato_academico ALTER COLUMN id DROP DEFAULT;
       asociado       postgres    false    267    266    267            ?           2604    50668    dato_laboral id    DEFAULT     v   ALTER TABLE ONLY asociado.dato_laboral ALTER COLUMN id SET DEFAULT nextval('asociado.dato_laboral_id_seq'::regclass);
 @   ALTER TABLE asociado.dato_laboral ALTER COLUMN id DROP DEFAULT;
       asociado       postgres    false    260    261    261            q           2604    50481    asistencia id    DEFAULT     n   ALTER TABLE ONLY evento.asistencia ALTER COLUMN id SET DEFAULT nextval('evento.asistencia_id_seq'::regclass);
 <   ALTER TABLE evento.asistencia ALTER COLUMN id DROP DEFAULT;
       evento       postgres    false    215    214    215            k           2604    50433    cronograma_evento id    DEFAULT     |   ALTER TABLE ONLY evento.cronograma_evento ALTER COLUMN id SET DEFAULT nextval('evento.cronograma_evento_id_seq'::regclass);
 C   ALTER TABLE evento.cronograma_evento ALTER COLUMN id DROP DEFAULT;
       evento       postgres    false    203    202    203            j           2604    50425    dia_semana id    DEFAULT     n   ALTER TABLE ONLY evento.dia_semana ALTER COLUMN id SET DEFAULT nextval('evento.dia_semana_id_seq'::regclass);
 <   ALTER TABLE evento.dia_semana ALTER COLUMN id DROP DEFAULT;
       evento       postgres    false    201    200    201            m           2604    50449 	   evento id    DEFAULT     f   ALTER TABLE ONLY evento.evento ALTER COLUMN id SET DEFAULT nextval('evento.evento_id_seq'::regclass);
 8   ALTER TABLE evento.evento ALTER COLUMN id DROP DEFAULT;
       evento       postgres    false    207    206    207            n           2604    50457    inscripcion id    DEFAULT     p   ALTER TABLE ONLY evento.inscripcion ALTER COLUMN id SET DEFAULT nextval('evento.inscripcion_id_seq'::regclass);
 =   ALTER TABLE evento.inscripcion ALTER COLUMN id DROP DEFAULT;
       evento       postgres    false    209    208    209            r           2604    50489    instructor id    DEFAULT     n   ALTER TABLE ONLY evento.instructor ALTER COLUMN id SET DEFAULT nextval('evento.instructor_id_seq'::regclass);
 <   ALTER TABLE evento.instructor ALTER COLUMN id DROP DEFAULT;
       evento       postgres    false    217    216    217            o           2604    50465    situacion_evento id    DEFAULT     z   ALTER TABLE ONLY evento.situacion_evento ALTER COLUMN id SET DEFAULT nextval('evento.situacion_evento_id_seq'::regclass);
 B   ALTER TABLE evento.situacion_evento ALTER COLUMN id DROP DEFAULT;
       evento       postgres    false    211    210    211            p           2604    50473    situacion_inscripcion id    DEFAULT     ?   ALTER TABLE ONLY evento.situacion_inscripcion ALTER COLUMN id SET DEFAULT nextval('evento.situacion_inscripcion_id_seq'::regclass);
 G   ALTER TABLE evento.situacion_inscripcion ALTER COLUMN id DROP DEFAULT;
       evento       postgres    false    213    212    213            l           2604    50441    tipo_evento id    DEFAULT     p   ALTER TABLE ONLY evento.tipo_evento ALTER COLUMN id SET DEFAULT nextval('evento.tipo_evento_id_seq'::regclass);
 =   ALTER TABLE evento.tipo_evento ALTER COLUMN id DROP DEFAULT;
       evento       postgres    false    204    205    205            w           2604    50529    cargo id    DEFAULT     f   ALTER TABLE ONLY general.cargo ALTER COLUMN id SET DEFAULT nextval('general.cargo_id_seq'::regclass);
 8   ALTER TABLE general.cargo ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    227    226    227            u           2604    50513    centro_estudio id    DEFAULT     x   ALTER TABLE ONLY general.centro_estudio ALTER COLUMN id SET DEFAULT nextval('general.centro_estudio_id_seq'::regclass);
 A   ALTER TABLE general.centro_estudio ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    223    222    223            ?           2604    50628 	   correo id    DEFAULT     h   ALTER TABLE ONLY general.correo ALTER COLUMN id SET DEFAULT nextval('general.correo_id_seq'::regclass);
 9   ALTER TABLE general.correo ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    251    250    251            t           2604    50505    especialidad id    DEFAULT     t   ALTER TABLE ONLY general.especialidad ALTER COLUMN id SET DEFAULT nextval('general.especialidad_id_seq'::regclass);
 ?   ALTER TABLE general.especialidad ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    221    220    221            s           2604    50497    grado_academico id    DEFAULT     z   ALTER TABLE ONLY general.grado_academico ALTER COLUMN id SET DEFAULT nextval('general.grado_academico_id_seq'::regclass);
 B   ALTER TABLE general.grado_academico ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    219    218    219            z           2604    50553    institucion id    DEFAULT     r   ALTER TABLE ONLY general.institucion ALTER COLUMN id SET DEFAULT nextval('general.institucion_id_seq'::regclass);
 >   ALTER TABLE general.institucion ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    233    232    233            v           2604    50521 
   periodo id    DEFAULT     j   ALTER TABLE ONLY general.periodo ALTER COLUMN id SET DEFAULT nextval('general.periodo_id_seq'::regclass);
 :   ALTER TABLE general.periodo ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    225    224    225            ~           2604    50585 
   persona id    DEFAULT     j   ALTER TABLE ONLY general.persona ALTER COLUMN id SET DEFAULT nextval('general.persona_id_seq'::regclass);
 :   ALTER TABLE general.persona ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    240    241    241            y           2604    50545 	   sector id    DEFAULT     h   ALTER TABLE ONLY general.sector ALTER COLUMN id SET DEFAULT nextval('general.sector_id_seq'::regclass);
 9   ALTER TABLE general.sector ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    230    231    231            ?           2604    50620    telefono id    DEFAULT     l   ALTER TABLE ONLY general.telefono ALTER COLUMN id SET DEFAULT nextval('general.telefono_id_seq'::regclass);
 ;   ALTER TABLE general.telefono ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    248    249    249                       2604    50596    tipo_correo id    DEFAULT     r   ALTER TABLE ONLY general.tipo_correo ALTER COLUMN id SET DEFAULT nextval('general.tipo_correo_id_seq'::regclass);
 >   ALTER TABLE general.tipo_correo ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    243    242    243            x           2604    50537    tipo_laboral id    DEFAULT     t   ALTER TABLE ONLY general.tipo_laboral ALTER COLUMN id SET DEFAULT nextval('general.tipo_laboral_id_seq'::regclass);
 ?   ALTER TABLE general.tipo_laboral ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    228    229    229            ?           2604    50604    tipo_operador id    DEFAULT     v   ALTER TABLE ONLY general.tipo_operador ALTER COLUMN id SET DEFAULT nextval('general.tipo_operador_id_seq'::regclass);
 @   ALTER TABLE general.tipo_operador ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    244    245    245            ?           2604    50612    tipo_telefono id    DEFAULT     v   ALTER TABLE ONLY general.tipo_telefono ALTER COLUMN id SET DEFAULT nextval('general.tipo_telefono_id_seq'::regclass);
 @   ALTER TABLE general.tipo_telefono ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    246    247    247            {           2604    50561    ubigeo_departamento id    DEFAULT     ?   ALTER TABLE ONLY general.ubigeo_departamento ALTER COLUMN id SET DEFAULT nextval('general.ubigeo_departamento_id_seq'::regclass);
 F   ALTER TABLE general.ubigeo_departamento ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    235    234    235            }           2604    50577    ubigeo_distrito id    DEFAULT     z   ALTER TABLE ONLY general.ubigeo_distrito ALTER COLUMN id SET DEFAULT nextval('general.ubigeo_distrito_id_seq'::regclass);
 B   ALTER TABLE general.ubigeo_distrito ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    239    238    239            |           2604    50569    ubigeo_provincia id    DEFAULT     |   ALTER TABLE ONLY general.ubigeo_provincia ALTER COLUMN id SET DEFAULT nextval('general.ubigeo_provincia_id_seq'::regclass);
 C   ALTER TABLE general.ubigeo_provincia ALTER COLUMN id DROP DEFAULT;
       general       postgres    false    237    236    237            ?           2604    50732    menu id    DEFAULT     t   ALTER TABLE ONLY gestion_usuario.menu ALTER COLUMN id SET DEFAULT nextval('gestion_usuario.menu_id_seq'::regclass);
 ?   ALTER TABLE gestion_usuario.menu ALTER COLUMN id DROP DEFAULT;
       gestion_usuario       postgres    false    277    276    277            ?           2604    50716    roles id    DEFAULT     v   ALTER TABLE ONLY gestion_usuario.roles ALTER COLUMN id SET DEFAULT nextval('gestion_usuario.roles_id_seq'::regclass);
 @   ALTER TABLE gestion_usuario.roles ALTER COLUMN id DROP DEFAULT;
       gestion_usuario       postgres    false    273    272    273            ?           2604    50724    usu_rol_menu id    DEFAULT     ?   ALTER TABLE ONLY gestion_usuario.usu_rol_menu ALTER COLUMN id SET DEFAULT nextval('gestion_usuario.usu_rol_menu_id_seq'::regclass);
 G   ALTER TABLE gestion_usuario.usu_rol_menu ALTER COLUMN id DROP DEFAULT;
       gestion_usuario       postgres    false    274    275    275            ?           2604    50700 
   usuario id    DEFAULT     z   ALTER TABLE ONLY gestion_usuario.usuario ALTER COLUMN id SET DEFAULT nextval('gestion_usuario.usuario_id_seq'::regclass);
 B   ALTER TABLE gestion_usuario.usuario ALTER COLUMN id DROP DEFAULT;
       gestion_usuario       postgres    false    269    268    269            ?           2604    50708    usuario_roles id    DEFAULT     ?   ALTER TABLE ONLY gestion_usuario.usuario_roles ALTER COLUMN id SET DEFAULT nextval('gestion_usuario.usuario_roles_id_seq'::regclass);
 H   ALTER TABLE gestion_usuario.usuario_roles ALTER COLUMN id DROP DEFAULT;
       gestion_usuario       postgres    false    271    270    271            ?           2604    50660 	   banner id    DEFAULT     f   ALTER TABLE ONLY pagina.banner ALTER COLUMN id SET DEFAULT nextval('pagina.banner_id_seq'::regclass);
 8   ALTER TABLE pagina.banner ALTER COLUMN id DROP DEFAULT;
       pagina       postgres    false    259    258    259            ?           2604    50636    documento id    DEFAULT     l   ALTER TABLE ONLY pagina.documento ALTER COLUMN id SET DEFAULT nextval('pagina.documento_id_seq'::regclass);
 ;   ALTER TABLE pagina.documento ALTER COLUMN id DROP DEFAULT;
       pagina       postgres    false    252    253    253            ?           2604    50652 	   imagen id    DEFAULT     f   ALTER TABLE ONLY pagina.imagen ALTER COLUMN id SET DEFAULT nextval('pagina.imagen_id_seq'::regclass);
 8   ALTER TABLE pagina.imagen ALTER COLUMN id DROP DEFAULT;
       pagina       postgres    false    257    256    257            ?           2604    50644 
   noticia id    DEFAULT     h   ALTER TABLE ONLY pagina.noticia ALTER COLUMN id SET DEFAULT nextval('pagina.noticia_id_seq'::regclass);
 9   ALTER TABLE pagina.noticia ALTER COLUMN id DROP DEFAULT;
       pagina       postgres    false    254    255    255            ?          0    50673    asociado 
   TABLE DATA               m   COPY asociado.asociado (id, persona_id, numero, fecha_incorporacion, estado, remove, usuario_id) FROM stdin;
    asociado       postgres    false    263   lx      ?          0    50681    consejo 
   TABLE DATA               U   COPY asociado.consejo (id, id_periodo, id_asociado, cargo_id, flag_tipo) FROM stdin;
    asociado       postgres    false    265   ?x      ?          0    50689    dato_academico 
   TABLE DATA               ?   COPY asociado.dato_academico (id, grado_acad_id, especialidad_id, fecha_emision, fecha_ingreso, fecha_termino, persona_id, remove, usuario_id) FROM stdin;
    asociado       postgres    false    267   ?x      ?          0    50665    dato_laboral 
   TABLE DATA               ?   COPY asociado.dato_laboral (id, institucion_id, cargo, sector_id, tipo_laboral_id, persona_id, estado, remove, usuario_id) FROM stdin;
    asociado       postgres    false    261   ?x      ?          0    50478 
   asistencia 
   TABLE DATA               u   COPY evento.asistencia (id, id_persona_evento, id_crono_evento, flag_asiste, usuario_id, id_inscripcion) FROM stdin;
    evento       postgres    false    215   4y      ?          0    50430    cronograma_evento 
   TABLE DATA               }   COPY evento.cronograma_evento (id, id_evento, id_dia_semana, fecha, created_at, updated_at, remove, descripcion) FROM stdin;
    evento       postgres    false    203   [y      ?          0    50422 
   dia_semana 
   TABLE DATA               5   COPY evento.dia_semana (id, descripcion) FROM stdin;
    evento       postgres    false    201   ?y      ?          0    50446    evento 
   TABLE DATA               ?   COPY evento.evento (id, tipo_evento_id, titulo, descripcion, fecha_inicio, fecha_termino, detalle, estado, costo, descuento_asociado, created_at, updated_at, remove, usuario_id, id_sit_evento, id_instructor) FROM stdin;
    evento       postgres    false    207   ?y      ?          0    50454    inscripcion 
   TABLE DATA               ?   COPY evento.inscripcion (id, persona_id, evento_id, remove, flag_entrega_certificado, nota, record_asistencia, usuario_id, id_situacion_insc, fecha_registro) FROM stdin;
    evento       postgres    false    209   4z      ?          0    50486 
   instructor 
   TABLE DATA               4   COPY evento.instructor (id, id_persona) FROM stdin;
    evento       postgres    false    217   rz      ?          0    50462    situacion_evento 
   TABLE DATA               >   COPY evento.situacion_evento (id, nombre, estado) FROM stdin;
    evento       postgres    false    211   ?z      ?          0    50470    situacion_inscripcion 
   TABLE DATA               C   COPY evento.situacion_inscripcion (id, nombre, estado) FROM stdin;
    evento       postgres    false    213   ?z      ?          0    50438    tipo_evento 
   TABLE DATA               Q   COPY evento.tipo_evento (id, nombre, created_at, updated_at, estado) FROM stdin;
    evento       postgres    false    205   {      ?          0    50526    cargo 
   TABLE DATA               1   COPY general.cargo (id, descripcion) FROM stdin;
    general       postgres    false    227   E{      ?          0    50510    centro_estudio 
   TABLE DATA               G   COPY general.centro_estudio (id, descripcion, flag_unasam) FROM stdin;
    general       postgres    false    223   ?{      ?          0    50625    correo 
   TABLE DATA               U   COPY general.correo (id, id_tipo_correo, id_persona, usuario_id, correo) FROM stdin;
    general       postgres    false    251   ?{      ?          0    50502    especialidad 
   TABLE DATA               K   COPY general.especialidad (id, descripcion, centro_estudio_id) FROM stdin;
    general       postgres    false    221   ?{      ?          0    50494    grado_academico 
   TABLE DATA               ;   COPY general.grado_academico (id, descripcion) FROM stdin;
    general       postgres    false    219   |      ?          0    50550    institucion 
   TABLE DATA               <   COPY general.institucion (id, ruc, descripcion) FROM stdin;
    general       postgres    false    233   5|      ?          0    50518    periodo 
   TABLE DATA               ,   COPY general.periodo (id, anio) FROM stdin;
    general       postgres    false    225   ?|      ?          0    50582    persona 
   TABLE DATA               ?   COPY general.persona (id, dni, apellido_paterno, apellido_materno, nombre, id_ubgdis_lugar_nac, id_ubgdis_domicilio, direccion, fecha_nacimiento) FROM stdin;
    general       postgres    false    241   ?|      ?          0    50542    sector 
   TABLE DATA               2   COPY general.sector (id, descripcion) FROM stdin;
    general       postgres    false    231   }      ?          0    50617    telefono 
   TABLE DATA               e   COPY general.telefono (id, num_telefono, id_tipo_telefono, id_tipo_operador, id_persona) FROM stdin;
    general       postgres    false    249   V}      ?          0    50593    tipo_correo 
   TABLE DATA               0   COPY general.tipo_correo (id, tipo) FROM stdin;
    general       postgres    false    243   ?}      ?          0    50534    tipo_laboral 
   TABLE DATA               8   COPY general.tipo_laboral (id, descripcion) FROM stdin;
    general       postgres    false    229   ?}      ?          0    50601    tipo_operador 
   TABLE DATA               6   COPY general.tipo_operador (id, operador) FROM stdin;
    general       postgres    false    245   ?}      ?          0    50609    tipo_telefono 
   TABLE DATA               ;   COPY general.tipo_telefono (id, tipo_telefono) FROM stdin;
    general       postgres    false    247   ~      ?          0    50558    ubigeo_departamento 
   TABLE DATA               :   COPY general.ubigeo_departamento (id, nombre) FROM stdin;
    general       postgres    false    235   E~      ?          0    50574    ubigeo_distrito 
   TABLE DATA               H   COPY general.ubigeo_distrito (id, nombre, id_ubi_provincia) FROM stdin;
    general       postgres    false    239   r~      ?          0    50566    ubigeo_provincia 
   TABLE DATA               L   COPY general.ubigeo_provincia (id, nombre, id_ubi_departamento) FROM stdin;
    general       postgres    false    237   ?~      ?          0    50729    menu 
   TABLE DATA               D   COPY gestion_usuario.menu (id, descripcion, icono, url) FROM stdin;
    gestion_usuario       postgres    false    277   ?~      ?          0    50713    roles 
   TABLE DATA               9   COPY gestion_usuario.roles (id, descripcion) FROM stdin;
    gestion_usuario       postgres    false    273         ?          0    50721    usu_rol_menu 
   TABLE DATA               T   COPY gestion_usuario.usu_rol_menu (id, id_usuario_rol, id_menu, estado) FROM stdin;
    gestion_usuario       postgres    false    275   N      ?          0    50697    usuario 
   TABLE DATA               [   COPY gestion_usuario.usuario (id, id_persona, user_name, pass, estado, remove) FROM stdin;
    gestion_usuario       postgres    false    269   q      ?          0    50705    usuario_roles 
   TABLE DATA               J   COPY gestion_usuario.usuario_roles (id, id_usuario, id_roles) FROM stdin;
    gestion_usuario       postgres    false    271   ?      ?          0    50937    autor 
   TABLE DATA               +   COPY pagina.autor (id, nombre) FROM stdin;
    pagina       postgres    false    278   :?      ?          0    50657    banner 
   TABLE DATA               r   COPY pagina.banner (id, titulo, descripcion, url, created_at, updated_at, estado, usuario_id, remove) FROM stdin;
    pagina       postgres    false    259   u?      ?          0    50633 	   documento 
   TABLE DATA               E   COPY pagina.documento (id, descripcion, url, usuario_id) FROM stdin;
    pagina       postgres    false    253   ??      ?          0    50649    imagen 
   TABLE DATA               t   COPY pagina.imagen (id, url, noticia_id, evento_id, created_at, updated_at, estado, persona_id, remove) FROM stdin;
    pagina       postgres    false    257   ??      ?          0    50641    noticia 
   TABLE DATA               ?   COPY pagina.noticia (id, titulo, descripcion, estado, fecha_publicacion, id_autor, created_at, updated_at, usuario_id, remove) FROM stdin;
    pagina       postgres    false    255   ̀                  0    0    asociado_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('asociado.asociado_id_seq', 9, true);
            asociado       postgres    false    262                       0    0    consejo_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('asociado.consejo_id_seq', 2, true);
            asociado       postgres    false    264                       0    0    dato_academico_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('asociado.dato_academico_id_seq', 1, true);
            asociado       postgres    false    266                       0    0    dato_laboral_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('asociado.dato_laboral_id_seq', 2, true);
            asociado       postgres    false    260                       0    0    asistencia_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('evento.asistencia_id_seq', 2, true);
            evento       postgres    false    214                       0    0    cronograma_evento_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('evento.cronograma_evento_id_seq', 5, true);
            evento       postgres    false    202                       0    0    dia_semana_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('evento.dia_semana_id_seq', 2, true);
            evento       postgres    false    200                       0    0    evento_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('evento.evento_id_seq', 1, true);
            evento       postgres    false    206                       0    0    inscripcion_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('evento.inscripcion_id_seq', 1, true);
            evento       postgres    false    208            	           0    0    instructor_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('evento.instructor_id_seq', 1, true);
            evento       postgres    false    216            
           0    0    situacion_evento_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('evento.situacion_evento_id_seq', 1, true);
            evento       postgres    false    210                       0    0    situacion_inscripcion_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('evento.situacion_inscripcion_id_seq', 2, true);
            evento       postgres    false    212                       0    0    tipo_evento_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('evento.tipo_evento_id_seq', 1, true);
            evento       postgres    false    204                       0    0    cargo_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('general.cargo_id_seq', 2, true);
            general       postgres    false    226                       0    0    centro_estudio_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('general.centro_estudio_id_seq', 1, true);
            general       postgres    false    222                       0    0    correo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('general.correo_id_seq', 2, true);
            general       postgres    false    250                       0    0    especialidad_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('general.especialidad_id_seq', 1, true);
            general       postgres    false    220                       0    0    grado_academico_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('general.grado_academico_id_seq', 2, true);
            general       postgres    false    218                       0    0    institucion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('general.institucion_id_seq', 2, true);
            general       postgres    false    232                       0    0    periodo_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('general.periodo_id_seq', 1, true);
            general       postgres    false    224                       0    0    persona_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('general.persona_id_seq', 2, true);
            general       postgres    false    240                       0    0    sector_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('general.sector_id_seq', 2, true);
            general       postgres    false    230                       0    0    telefono_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('general.telefono_id_seq', 1, true);
            general       postgres    false    248                       0    0    tipo_correo_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('general.tipo_correo_id_seq', 2, true);
            general       postgres    false    242                       0    0    tipo_laboral_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('general.tipo_laboral_id_seq', 2, true);
            general       postgres    false    228                       0    0    tipo_operador_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('general.tipo_operador_id_seq', 1, true);
            general       postgres    false    244                       0    0    tipo_telefono_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('general.tipo_telefono_id_seq', 3, true);
            general       postgres    false    246                       0    0    ubigeo_departamento_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('general.ubigeo_departamento_id_seq', 2, true);
            general       postgres    false    234                       0    0    ubigeo_distrito_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('general.ubigeo_distrito_id_seq', 2, true);
            general       postgres    false    238                       0    0    ubigeo_provincia_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('general.ubigeo_provincia_id_seq', 2, true);
            general       postgres    false    236                       0    0    menu_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('gestion_usuario.menu_id_seq', 1, true);
            gestion_usuario       postgres    false    276                       0    0    roles_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('gestion_usuario.roles_id_seq', 2, true);
            gestion_usuario       postgres    false    272                        0    0    usu_rol_menu_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('gestion_usuario.usu_rol_menu_id_seq', 2, true);
            gestion_usuario       postgres    false    274            !           0    0    usuario_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('gestion_usuario.usuario_id_seq', 2, true);
            gestion_usuario       postgres    false    268            "           0    0    usuario_roles_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('gestion_usuario.usuario_roles_id_seq', 1, true);
            gestion_usuario       postgres    false    270            #           0    0    banner_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('pagina.banner_id_seq', 1, false);
            pagina       postgres    false    258            $           0    0    documento_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('pagina.documento_id_seq', 1, false);
            pagina       postgres    false    252            %           0    0    imagen_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('pagina.imagen_id_seq', 5, true);
            pagina       postgres    false    256            &           0    0    noticia_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('pagina.noticia_id_seq', 3, true);
            pagina       postgres    false    254            ?           2606    50678    asociado asociado_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY asociado.asociado
    ADD CONSTRAINT asociado_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY asociado.asociado DROP CONSTRAINT asociado_pkey;
       asociado         postgres    false    263            ?           2606    50686    consejo consejo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY asociado.consejo
    ADD CONSTRAINT consejo_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY asociado.consejo DROP CONSTRAINT consejo_pkey;
       asociado         postgres    false    265            ?           2606    50694 "   dato_academico dato_academico_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY asociado.dato_academico
    ADD CONSTRAINT dato_academico_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY asociado.dato_academico DROP CONSTRAINT dato_academico_pkey;
       asociado         postgres    false    267            ?           2606    50670    dato_laboral dato_laboral_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY asociado.dato_laboral
    ADD CONSTRAINT dato_laboral_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY asociado.dato_laboral DROP CONSTRAINT dato_laboral_pkey;
       asociado         postgres    false    261            ?           2606    50483    asistencia asistencia_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY evento.asistencia
    ADD CONSTRAINT asistencia_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY evento.asistencia DROP CONSTRAINT asistencia_pkey;
       evento         postgres    false    215            ?           2606    50435 (   cronograma_evento cronograma_evento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY evento.cronograma_evento
    ADD CONSTRAINT cronograma_evento_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY evento.cronograma_evento DROP CONSTRAINT cronograma_evento_pkey;
       evento         postgres    false    203            ?           2606    50427    dia_semana dia_semana_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY evento.dia_semana
    ADD CONSTRAINT dia_semana_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY evento.dia_semana DROP CONSTRAINT dia_semana_pkey;
       evento         postgres    false    201            ?           2606    50451    evento evento_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY evento.evento
    ADD CONSTRAINT evento_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY evento.evento DROP CONSTRAINT evento_pkey;
       evento         postgres    false    207            ?           2606    50459    inscripcion inscripcion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY evento.inscripcion
    ADD CONSTRAINT inscripcion_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY evento.inscripcion DROP CONSTRAINT inscripcion_pkey;
       evento         postgres    false    209            ?           2606    50491    instructor instructor_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY evento.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY evento.instructor DROP CONSTRAINT instructor_pkey;
       evento         postgres    false    217            ?           2606    50467 &   situacion_evento situacion_evento_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY evento.situacion_evento
    ADD CONSTRAINT situacion_evento_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY evento.situacion_evento DROP CONSTRAINT situacion_evento_pkey;
       evento         postgres    false    211            ?           2606    50475 0   situacion_inscripcion situacion_inscripcion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY evento.situacion_inscripcion
    ADD CONSTRAINT situacion_inscripcion_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY evento.situacion_inscripcion DROP CONSTRAINT situacion_inscripcion_pkey;
       evento         postgres    false    213            ?           2606    50443    tipo_evento tipo_evento_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY evento.tipo_evento
    ADD CONSTRAINT tipo_evento_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY evento.tipo_evento DROP CONSTRAINT tipo_evento_pkey;
       evento         postgres    false    205            ?           2606    50531    cargo cargo_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY general.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY general.cargo DROP CONSTRAINT cargo_pkey;
       general         postgres    false    227            ?           2606    50515 "   centro_estudio centro_estudio_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY general.centro_estudio
    ADD CONSTRAINT centro_estudio_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY general.centro_estudio DROP CONSTRAINT centro_estudio_pkey;
       general         postgres    false    223            ?           2606    50630    correo correo_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY general.correo
    ADD CONSTRAINT correo_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY general.correo DROP CONSTRAINT correo_pkey;
       general         postgres    false    251            ?           2606    50507    especialidad especialidad_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY general.especialidad
    ADD CONSTRAINT especialidad_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY general.especialidad DROP CONSTRAINT especialidad_pkey;
       general         postgres    false    221            ?           2606    50499 $   grado_academico grado_academico_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY general.grado_academico
    ADD CONSTRAINT grado_academico_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY general.grado_academico DROP CONSTRAINT grado_academico_pkey;
       general         postgres    false    219            ?           2606    50555    institucion institucion_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY general.institucion
    ADD CONSTRAINT institucion_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY general.institucion DROP CONSTRAINT institucion_pkey;
       general         postgres    false    233            ?           2606    50523    periodo periodo_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY general.periodo
    ADD CONSTRAINT periodo_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY general.periodo DROP CONSTRAINT periodo_pkey;
       general         postgres    false    225            ?           2606    50590    persona persona_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY general.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY general.persona DROP CONSTRAINT persona_pkey;
       general         postgres    false    241            ?           2606    50547    sector sector_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY general.sector
    ADD CONSTRAINT sector_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY general.sector DROP CONSTRAINT sector_pkey;
       general         postgres    false    231            ?           2606    50622    telefono telefono_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY general.telefono
    ADD CONSTRAINT telefono_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY general.telefono DROP CONSTRAINT telefono_pkey;
       general         postgres    false    249            ?           2606    50598    tipo_correo tipo_correo_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY general.tipo_correo
    ADD CONSTRAINT tipo_correo_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY general.tipo_correo DROP CONSTRAINT tipo_correo_pkey;
       general         postgres    false    243            ?           2606    50539    tipo_laboral tipo_laboral_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY general.tipo_laboral
    ADD CONSTRAINT tipo_laboral_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY general.tipo_laboral DROP CONSTRAINT tipo_laboral_pkey;
       general         postgres    false    229            ?           2606    50606     tipo_operador tipo_operador_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY general.tipo_operador
    ADD CONSTRAINT tipo_operador_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY general.tipo_operador DROP CONSTRAINT tipo_operador_pkey;
       general         postgres    false    245            ?           2606    50614     tipo_telefono tipo_telefono_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY general.tipo_telefono
    ADD CONSTRAINT tipo_telefono_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY general.tipo_telefono DROP CONSTRAINT tipo_telefono_pkey;
       general         postgres    false    247            ?           2606    50563 ,   ubigeo_departamento ubigeo_departamento_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY general.ubigeo_departamento
    ADD CONSTRAINT ubigeo_departamento_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY general.ubigeo_departamento DROP CONSTRAINT ubigeo_departamento_pkey;
       general         postgres    false    235            ?           2606    50579 $   ubigeo_distrito ubigeo_distrito_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY general.ubigeo_distrito
    ADD CONSTRAINT ubigeo_distrito_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY general.ubigeo_distrito DROP CONSTRAINT ubigeo_distrito_pkey;
       general         postgres    false    239            ?           2606    50571 &   ubigeo_provincia ubigeo_provincia_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY general.ubigeo_provincia
    ADD CONSTRAINT ubigeo_provincia_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY general.ubigeo_provincia DROP CONSTRAINT ubigeo_provincia_pkey;
       general         postgres    false    237            ?           2606    50734    menu menu_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY gestion_usuario.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY gestion_usuario.menu DROP CONSTRAINT menu_pkey;
       gestion_usuario         postgres    false    277            ?           2606    50718    roles roles_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY gestion_usuario.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY gestion_usuario.roles DROP CONSTRAINT roles_pkey;
       gestion_usuario         postgres    false    273            ?           2606    50726    usu_rol_menu usu_rol_menu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY gestion_usuario.usu_rol_menu
    ADD CONSTRAINT usu_rol_menu_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY gestion_usuario.usu_rol_menu DROP CONSTRAINT usu_rol_menu_pkey;
       gestion_usuario         postgres    false    275            ?           2606    50702    usuario usuario_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY gestion_usuario.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY gestion_usuario.usuario DROP CONSTRAINT usuario_pkey;
       gestion_usuario         postgres    false    269            ?           2606    50710     usuario_roles usuario_roles_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY gestion_usuario.usuario_roles
    ADD CONSTRAINT usuario_roles_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY gestion_usuario.usuario_roles DROP CONSTRAINT usuario_roles_pkey;
       gestion_usuario         postgres    false    271            ?           2606    50941    autor autor_pk 
   CONSTRAINT     L   ALTER TABLE ONLY pagina.autor
    ADD CONSTRAINT autor_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY pagina.autor DROP CONSTRAINT autor_pk;
       pagina         postgres    false    278            ?           2606    50662    banner banner_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY pagina.banner
    ADD CONSTRAINT banner_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY pagina.banner DROP CONSTRAINT banner_pkey;
       pagina         postgres    false    259            ?           2606    50638    documento documento_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY pagina.documento
    ADD CONSTRAINT documento_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY pagina.documento DROP CONSTRAINT documento_pkey;
       pagina         postgres    false    253            ?           2606    50654    imagen imagen_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY pagina.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY pagina.imagen DROP CONSTRAINT imagen_pkey;
       pagina         postgres    false    257            ?           2606    50646    noticia noticia_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY pagina.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY pagina.noticia DROP CONSTRAINT noticia_pkey;
       pagina         postgres    false    255            ?           1259    50936    correo_correo_uindex    INDEX     Q   CREATE UNIQUE INDEX correo_correo_uindex ON general.correo USING btree (correo);
 )   DROP INDEX general.correo_correo_uindex;
       general         postgres    false    251            ?           2606    50876    asociado fkas1    FK CONSTRAINT     u   ALTER TABLE ONLY asociado.asociado
    ADD CONSTRAINT fkas1 FOREIGN KEY (persona_id) REFERENCES general.persona(id);
 :   ALTER TABLE ONLY asociado.asociado DROP CONSTRAINT fkas1;
       asociado       postgres    false    3002    241    263            ?           2606    50891    consejo fkco1    FK CONSTRAINT     w   ALTER TABLE ONLY asociado.consejo
    ADD CONSTRAINT fkco1 FOREIGN KEY (id_asociado) REFERENCES asociado.asociado(id);
 9   ALTER TABLE ONLY asociado.consejo DROP CONSTRAINT fkco1;
       asociado       postgres    false    3025    263    265                        2606    50896    consejo fkco2    FK CONSTRAINT     t   ALTER TABLE ONLY asociado.consejo
    ADD CONSTRAINT fkco2 FOREIGN KEY (id_periodo) REFERENCES general.periodo(id);
 9   ALTER TABLE ONLY asociado.consejo DROP CONSTRAINT fkco2;
       asociado       postgres    false    2986    225    265                       2606    50901    consejo fkco3    FK CONSTRAINT     p   ALTER TABLE ONLY asociado.consejo
    ADD CONSTRAINT fkco3 FOREIGN KEY (cargo_id) REFERENCES general.cargo(id);
 9   ALTER TABLE ONLY asociado.consejo DROP CONSTRAINT fkco3;
       asociado       postgres    false    2988    265    227                       2606    50771    dato_academico fkda1    FK CONSTRAINT     ?   ALTER TABLE ONLY asociado.dato_academico
    ADD CONSTRAINT fkda1 FOREIGN KEY (grado_acad_id) REFERENCES general.grado_academico(id);
 @   ALTER TABLE ONLY asociado.dato_academico DROP CONSTRAINT fkda1;
       asociado       postgres    false    219    267    2980                       2606    50776    dato_academico fkda2    FK CONSTRAINT     ?   ALTER TABLE ONLY asociado.dato_academico
    ADD CONSTRAINT fkda2 FOREIGN KEY (especialidad_id) REFERENCES general.especialidad(id);
 @   ALTER TABLE ONLY asociado.dato_academico DROP CONSTRAINT fkda2;
       asociado       postgres    false    267    221    2982                       2606    50781    dato_academico fkda3    FK CONSTRAINT     {   ALTER TABLE ONLY asociado.dato_academico
    ADD CONSTRAINT fkda3 FOREIGN KEY (persona_id) REFERENCES general.persona(id);
 @   ALTER TABLE ONLY asociado.dato_academico DROP CONSTRAINT fkda3;
       asociado       postgres    false    3002    267    241            ?           2606    50746    dato_laboral fkdl1    FK CONSTRAINT     ?   ALTER TABLE ONLY asociado.dato_laboral
    ADD CONSTRAINT fkdl1 FOREIGN KEY (tipo_laboral_id) REFERENCES general.tipo_laboral(id);
 >   ALTER TABLE ONLY asociado.dato_laboral DROP CONSTRAINT fkdl1;
       asociado       postgres    false    261    229    2990            ?           2606    50751    dato_laboral fkdl2    FK CONSTRAINT     w   ALTER TABLE ONLY asociado.dato_laboral
    ADD CONSTRAINT fkdl2 FOREIGN KEY (sector_id) REFERENCES general.sector(id);
 >   ALTER TABLE ONLY asociado.dato_laboral DROP CONSTRAINT fkdl2;
       asociado       postgres    false    2992    231    261            ?           2606    50756    dato_laboral fkdl3    FK CONSTRAINT     ?   ALTER TABLE ONLY asociado.dato_laboral
    ADD CONSTRAINT fkdl3 FOREIGN KEY (institucion_id) REFERENCES general.institucion(id);
 >   ALTER TABLE ONLY asociado.dato_laboral DROP CONSTRAINT fkdl3;
       asociado       postgres    false    261    233    2994            ?           2606    50761    dato_laboral fkdl4    FK CONSTRAINT     y   ALTER TABLE ONLY asociado.dato_laboral
    ADD CONSTRAINT fkdl4 FOREIGN KEY (persona_id) REFERENCES general.persona(id);
 >   ALTER TABLE ONLY asociado.dato_laboral DROP CONSTRAINT fkdl4;
       asociado       postgres    false    261    241    3002            ?           2606    50846    cronograma_evento fcev1    FK CONSTRAINT     y   ALTER TABLE ONLY evento.cronograma_evento
    ADD CONSTRAINT fcev1 FOREIGN KEY (id_evento) REFERENCES evento.evento(id);
 A   ALTER TABLE ONLY evento.cronograma_evento DROP CONSTRAINT fcev1;
       evento       postgres    false    203    207    2968            ?           2606    50851    cronograma_evento fcev2    FK CONSTRAINT     ?   ALTER TABLE ONLY evento.cronograma_evento
    ADD CONSTRAINT fcev2 FOREIGN KEY (id_dia_semana) REFERENCES evento.dia_semana(id);
 A   ALTER TABLE ONLY evento.cronograma_evento DROP CONSTRAINT fcev2;
       evento       postgres    false    2962    203    201            ?           2606    50881    asistencia fkas1    FK CONSTRAINT     ?   ALTER TABLE ONLY evento.asistencia
    ADD CONSTRAINT fkas1 FOREIGN KEY (id_crono_evento) REFERENCES evento.cronograma_evento(id);
 :   ALTER TABLE ONLY evento.asistencia DROP CONSTRAINT fkas1;
       evento       postgres    false    2964    215    203            ?           2606    50886    asistencia fkas2    FK CONSTRAINT     |   ALTER TABLE ONLY evento.asistencia
    ADD CONSTRAINT fkas2 FOREIGN KEY (id_inscripcion) REFERENCES evento.inscripcion(id);
 :   ALTER TABLE ONLY evento.asistencia DROP CONSTRAINT fkas2;
       evento       postgres    false    215    209    2970            ?           2606    50831    evento fkev1    FK CONSTRAINT     x   ALTER TABLE ONLY evento.evento
    ADD CONSTRAINT fkev1 FOREIGN KEY (tipo_evento_id) REFERENCES evento.tipo_evento(id);
 6   ALTER TABLE ONLY evento.evento DROP CONSTRAINT fkev1;
       evento       postgres    false    207    205    2966            ?           2606    50836    evento fkev3    FK CONSTRAINT     |   ALTER TABLE ONLY evento.evento
    ADD CONSTRAINT fkev3 FOREIGN KEY (id_sit_evento) REFERENCES evento.situacion_evento(id);
 6   ALTER TABLE ONLY evento.evento DROP CONSTRAINT fkev3;
       evento       postgres    false    211    207    2972            ?           2606    50841    evento fkev4    FK CONSTRAINT     v   ALTER TABLE ONLY evento.evento
    ADD CONSTRAINT fkev4 FOREIGN KEY (id_instructor) REFERENCES evento.instructor(id);
 6   ALTER TABLE ONLY evento.evento DROP CONSTRAINT fkev4;
       evento       postgres    false    217    207    2978            ?           2606    50871    instructor fkevinst1    FK CONSTRAINT     y   ALTER TABLE ONLY evento.instructor
    ADD CONSTRAINT fkevinst1 FOREIGN KEY (id_persona) REFERENCES general.persona(id);
 >   ALTER TABLE ONLY evento.instructor DROP CONSTRAINT fkevinst1;
       evento       postgres    false    3002    217    241            ?           2606    50856    inscripcion fkinsc1    FK CONSTRAINT     x   ALTER TABLE ONLY evento.inscripcion
    ADD CONSTRAINT fkinsc1 FOREIGN KEY (persona_id) REFERENCES general.persona(id);
 =   ALTER TABLE ONLY evento.inscripcion DROP CONSTRAINT fkinsc1;
       evento       postgres    false    241    209    3002            ?           2606    50861    inscripcion fkinsc2    FK CONSTRAINT     u   ALTER TABLE ONLY evento.inscripcion
    ADD CONSTRAINT fkinsc2 FOREIGN KEY (evento_id) REFERENCES evento.evento(id);
 =   ALTER TABLE ONLY evento.inscripcion DROP CONSTRAINT fkinsc2;
       evento       postgres    false    2968    209    207            ?           2606    50866    inscripcion fkinsc3    FK CONSTRAINT     ?   ALTER TABLE ONLY evento.inscripcion
    ADD CONSTRAINT fkinsc3 FOREIGN KEY (id_situacion_insc) REFERENCES evento.situacion_inscripcion(id);
 =   ALTER TABLE ONLY evento.inscripcion DROP CONSTRAINT fkinsc3;
       evento       postgres    false    2974    209    213            ?           2606    50796    correo fkco1    FK CONSTRAINT     z   ALTER TABLE ONLY general.correo
    ADD CONSTRAINT fkco1 FOREIGN KEY (id_tipo_correo) REFERENCES general.tipo_correo(id);
 7   ALTER TABLE ONLY general.correo DROP CONSTRAINT fkco1;
       general       postgres    false    251    243    3004            ?           2606    50801    correo fkco2    FK CONSTRAINT     r   ALTER TABLE ONLY general.correo
    ADD CONSTRAINT fkco2 FOREIGN KEY (id_persona) REFERENCES general.persona(id);
 7   ALTER TABLE ONLY general.correo DROP CONSTRAINT fkco2;
       general       postgres    false    3002    241    251            ?           2606    50766    especialidad fkes1    FK CONSTRAINT     ?   ALTER TABLE ONLY general.especialidad
    ADD CONSTRAINT fkes1 FOREIGN KEY (centro_estudio_id) REFERENCES general.centro_estudio(id);
 =   ALTER TABLE ONLY general.especialidad DROP CONSTRAINT fkes1;
       general       postgres    false    223    2984    221            ?           2606    50786    persona fkp1    FK CONSTRAINT     ?   ALTER TABLE ONLY general.persona
    ADD CONSTRAINT fkp1 FOREIGN KEY (id_ubgdis_domicilio) REFERENCES general.ubigeo_distrito(id);
 7   ALTER TABLE ONLY general.persona DROP CONSTRAINT fkp1;
       general       postgres    false    241    239    3000            ?           2606    50791    persona fkp2    FK CONSTRAINT     ?   ALTER TABLE ONLY general.persona
    ADD CONSTRAINT fkp2 FOREIGN KEY (id_ubgdis_lugar_nac) REFERENCES general.ubigeo_distrito(id);
 7   ALTER TABLE ONLY general.persona DROP CONSTRAINT fkp2;
       general       postgres    false    239    241    3000            ?           2606    50806    telefono fktel1    FK CONSTRAINT     ?   ALTER TABLE ONLY general.telefono
    ADD CONSTRAINT fktel1 FOREIGN KEY (id_tipo_operador) REFERENCES general.tipo_operador(id);
 :   ALTER TABLE ONLY general.telefono DROP CONSTRAINT fktel1;
       general       postgres    false    249    3006    245            ?           2606    50811    telefono fktel2    FK CONSTRAINT     ?   ALTER TABLE ONLY general.telefono
    ADD CONSTRAINT fktel2 FOREIGN KEY (id_tipo_telefono) REFERENCES general.tipo_telefono(id);
 :   ALTER TABLE ONLY general.telefono DROP CONSTRAINT fktel2;
       general       postgres    false    3008    249    247            ?           2606    50816    telefono fktel3    FK CONSTRAINT     u   ALTER TABLE ONLY general.telefono
    ADD CONSTRAINT fktel3 FOREIGN KEY (id_persona) REFERENCES general.persona(id);
 :   ALTER TABLE ONLY general.telefono DROP CONSTRAINT fktel3;
       general       postgres    false    3002    241    249            ?           2606    50821    ubigeo_distrito fkud1    FK CONSTRAINT     ?   ALTER TABLE ONLY general.ubigeo_distrito
    ADD CONSTRAINT fkud1 FOREIGN KEY (id_ubi_provincia) REFERENCES general.ubigeo_provincia(id);
 @   ALTER TABLE ONLY general.ubigeo_distrito DROP CONSTRAINT fkud1;
       general       postgres    false    239    237    2998            ?           2606    50826    ubigeo_provincia fkup1    FK CONSTRAINT     ?   ALTER TABLE ONLY general.ubigeo_provincia
    ADD CONSTRAINT fkup1 FOREIGN KEY (id_ubi_departamento) REFERENCES general.ubigeo_departamento(id);
 A   ALTER TABLE ONLY general.ubigeo_provincia DROP CONSTRAINT fkup1;
       general       postgres    false    2996    235    237            
           2606    50931 	   menu fkm1    FK CONSTRAINT     t   ALTER TABLE ONLY gestion_usuario.menu
    ADD CONSTRAINT fkm1 FOREIGN KEY (id) REFERENCES gestion_usuario.menu(id);
 <   ALTER TABLE ONLY gestion_usuario.menu DROP CONSTRAINT fkm1;
       gestion_usuario       postgres    false    3039    277    277                       2606    50911    usuario_roles fkur1    FK CONSTRAINT     ?   ALTER TABLE ONLY gestion_usuario.usuario_roles
    ADD CONSTRAINT fkur1 FOREIGN KEY (id_usuario) REFERENCES gestion_usuario.usuario(id);
 F   ALTER TABLE ONLY gestion_usuario.usuario_roles DROP CONSTRAINT fkur1;
       gestion_usuario       postgres    false    269    271    3031                       2606    50916    usuario_roles fkur2    FK CONSTRAINT     ?   ALTER TABLE ONLY gestion_usuario.usuario_roles
    ADD CONSTRAINT fkur2 FOREIGN KEY (id_roles) REFERENCES gestion_usuario.roles(id);
 F   ALTER TABLE ONLY gestion_usuario.usuario_roles DROP CONSTRAINT fkur2;
       gestion_usuario       postgres    false    271    3035    273                       2606    50921    usu_rol_menu fkurm1    FK CONSTRAINT     ?   ALTER TABLE ONLY gestion_usuario.usu_rol_menu
    ADD CONSTRAINT fkurm1 FOREIGN KEY (id_usuario_rol) REFERENCES gestion_usuario.usuario_roles(id);
 F   ALTER TABLE ONLY gestion_usuario.usu_rol_menu DROP CONSTRAINT fkurm1;
       gestion_usuario       postgres    false    271    3033    275            	           2606    50926    usu_rol_menu fkurm2    FK CONSTRAINT     ?   ALTER TABLE ONLY gestion_usuario.usu_rol_menu
    ADD CONSTRAINT fkurm2 FOREIGN KEY (id_menu) REFERENCES gestion_usuario.menu(id);
 F   ALTER TABLE ONLY gestion_usuario.usu_rol_menu DROP CONSTRAINT fkurm2;
       gestion_usuario       postgres    false    277    3039    275                       2606    50906    usuario fkusu1    FK CONSTRAINT     |   ALTER TABLE ONLY gestion_usuario.usuario
    ADD CONSTRAINT fkusu1 FOREIGN KEY (id_persona) REFERENCES general.persona(id);
 A   ALTER TABLE ONLY gestion_usuario.usuario DROP CONSTRAINT fkusu1;
       gestion_usuario       postgres    false    269    3002    241            ?           2606    50736    imagen fki1    FK CONSTRAINT     o   ALTER TABLE ONLY pagina.imagen
    ADD CONSTRAINT fki1 FOREIGN KEY (noticia_id) REFERENCES pagina.noticia(id);
 5   ALTER TABLE ONLY pagina.imagen DROP CONSTRAINT fki1;
       pagina       postgres    false    3017    255    257            ?           2606    50741    imagen fki2    FK CONSTRAINT     m   ALTER TABLE ONLY pagina.imagen
    ADD CONSTRAINT fki2 FOREIGN KEY (evento_id) REFERENCES evento.evento(id);
 5   ALTER TABLE ONLY pagina.imagen DROP CONSTRAINT fki2;
       pagina       postgres    false    2968    257    207            ?           2606    50955    noticia noticia_autor_id_fk    FK CONSTRAINT     {   ALTER TABLE ONLY pagina.noticia
    ADD CONSTRAINT noticia_autor_id_fk FOREIGN KEY (id_autor) REFERENCES pagina.autor(id);
 E   ALTER TABLE ONLY pagina.noticia DROP CONSTRAINT noticia_autor_id_fk;
       pagina       postgres    false    3041    278    255            ?   $   x???4?462?4202?50?54?,BC?=... M??      ?      x?3?4??????????=... 0??      ?   "   x?3?4B##C]#]Cs\L?NC?=... ?s       ?   '   x?3?4?LN,JO?K?29?8+RRS9K8?b???? ??|      ?      x?3?4?4?,??\1z\\\ N      ?   <   x?3?4B##C]#]Cs?H??L??R????? ????pz敤?d&e?s??qqq ?      ?      x?3??)?K-?2??M,*2b???? F??      ?   Q   x?3?4?t-K?+?,?/???????Rs??9??u?t?q0K88M!"?F?F?
??V@?U?hr??qqq ???      ?   .   x?3?4?4?,¼??̒ĊNC??!??????????9W? ???      ?      x?3?4?????? d      ?      x?3?,(?OJ?K?W )?%\1z\\\ rk}      ?   6   x?3??HL???,IL??,?2???W(NU(,MU?M,V(??K-R?HJ??qqq ^?      ?   .   x?3???/KMILI-?4202?50?54Q0??20 "?b?\1z\\\ ?_      ?   +   x?3?t?,JM.?/RH?JM.-?,??2??O*J-??????? ??
?      ?      x?3??)?*-?LLO?46?????? >?      ?      x?3?4?4???=... ?G      ?      x?3?t?ON?K?LTH-IaNC?=... j??      ?   $   x?3??ML-.)?L?2?t?O.?/JL??????? }      ?   P   x?3?42073164??,?KT?+M-KT(??,K-*?LILQ(H,JTH?QHI-N,*?????2?45131"N??"??c???? ?L!h      ?      x?3?4202?????? B?      ?   V   x?3?473164?4?t,-J????t>?09?(??3<3'?(5%?ӐӈӱLO! 1/???????D?`}?N##C]#]Cs?=... ???      ?   '   x?3????K-?L?2?tI-N,*????W??????? ???      ?      x?3??4?43406??4B#?=... .Nz      ?   $   x?3???+.?,)M???K??2?H-*3c???? ??	?      ?   "   x?3?9?29/39?ˈ?191%5Ď???? ??t      ?      x?3?t?+I??????? e?      ?   '   x?3??/?,.I,?2?t?I,??2?t????????? ?fK      ?      x?3?t?KN,??2????M?????? =^      ?   ,   x?3???KI-Hyə???\F???E?i9?E?ŜF\1z\\\ ?9
?      ?   !   x?3??(M,J??4?2????M?4?????? R??      ?   )   x?3??M?+5?t??O?,??,//????%??r??qqq ?X
J      ?   &   x?3?tL????,.)JL?/?2???+?,??b???? ??	?      ?      x?3?4??=... ??      ?   ?   x?5???   ?3|?g?l?<b??@M????͙M???????m<X??\?
Хc???9	^f|.??Bu???X??R{?g65?[^?;3h!ڪB???R?>$?p?L?>mRc?Y?? ?????"Yiº<????z?fx?!??{Q-<      ?      x?3?4?4?????? ?X      ?   +   x?3?(?OJ?K??2B0?L??4?t,-?/?????? ??d      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ~   x???Q
?0@??S??$?n?Y?)s?BA6??[+??0??{??0??)1GX?u?!?;dBv ;d???|?????1?J?R????W	?[???s?%-UZWɠ<ۋ'hv???]Ob?ݭ?^;???,8?     