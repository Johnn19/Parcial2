PGDMP     6    	            	    x         
   biblioteca    10.14    10.14 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    24822 
   biblioteca    DATABASE     �   CREATE DATABASE biblioteca WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE biblioteca;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24855 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         adminnn    false    3            �            1259    24853    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       adminnn    false    203    3            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       adminnn    false    202            �            1259    24865    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         adminnn    false    3            �            1259    24863    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       adminnn    false    205    3            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       adminnn    false    204            �            1259    24847    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         adminnn    false    3            �            1259    24845    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       adminnn    false    3    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       adminnn    false    200            �            1259    24873 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         adminnn    false    3            �            1259    24883    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         adminnn    false    3            �            1259    24881    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       adminnn    false    209    3            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       adminnn    false    208            �            1259    24871    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       adminnn    false    3    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       adminnn    false    206            �            1259    24891    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         adminnn    false    3            �            1259    24889 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       adminnn    false    211    3            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       adminnn    false    210            �            1259    24992    autor_autor    TABLE     �   CREATE TABLE public.autor_autor (
    id integer NOT NULL,
    "Nombre" character varying(50) NOT NULL,
    "Nacionalidad" character varying(20) NOT NULL,
    libro_id integer NOT NULL
);
    DROP TABLE public.autor_autor;
       public         adminnn    false    3            �            1259    24990    autor_autor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.autor_autor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.autor_autor_id_seq;
       public       adminnn    false    3    217            �           0    0    autor_autor_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.autor_autor_id_seq OWNED BY public.autor_autor.id;
            public       adminnn    false    216            �            1259    24951    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         adminnn    false    3            �            1259    24949    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       adminnn    false    213    3            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       adminnn    false    212            �            1259    24837    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         adminnn    false    3            �            1259    24835    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       adminnn    false    199    3            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       adminnn    false    198            �            1259    24826    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         adminnn    false    3            �            1259    24824    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       adminnn    false    3    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       adminnn    false    196            �            1259    25032    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         adminnn    false    3            �            1259    24984    libro_libro    TABLE        CREATE TABLE public.libro_libro (
    id integer NOT NULL,
    "Codigo" character varying(50) NOT NULL,
    "Titulo" character varying(20) NOT NULL,
    "ISBN" character varying(50) NOT NULL,
    "Editorial" character varying(20) NOT NULL,
    "Numpags" character varying(50) NOT NULL
);
    DROP TABLE public.libro_libro;
       public         adminnn    false    3            �            1259    24982    libro_libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libro_libro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.libro_libro_id_seq;
       public       adminnn    false    215    3            �           0    0    libro_libro_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.libro_libro_id_seq OWNED BY public.libro_libro.id;
            public       adminnn    false    214            �            1259    25014    prestamos_prestamos    TABLE     �   CREATE TABLE public.prestamos_prestamos (
    id integer NOT NULL,
    "FecPrestamo" character varying(50) NOT NULL,
    "FecDevolucion" character varying(20) NOT NULL,
    libro_id integer NOT NULL,
    usuario_id integer NOT NULL
);
 '   DROP TABLE public.prestamos_prestamos;
       public         adminnn    false    3            �            1259    25012    prestamos_prestamos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prestamos_prestamos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.prestamos_prestamos_id_seq;
       public       adminnn    false    221    3            �           0    0    prestamos_prestamos_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.prestamos_prestamos_id_seq OWNED BY public.prestamos_prestamos.id;
            public       adminnn    false    220            �            1259    25006    usuario_usuario    TABLE     (  CREATE TABLE public.usuario_usuario (
    id integer NOT NULL,
    "NumUsuario" character varying(50) NOT NULL,
    "NIF" character varying(20) NOT NULL,
    "Nombre" character varying(50) NOT NULL,
    "Direccion" character varying(20) NOT NULL,
    "Telefono" character varying(50) NOT NULL
);
 #   DROP TABLE public.usuario_usuario;
       public         adminnn    false    3            �            1259    25004    usuario_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_usuario_id_seq;
       public       adminnn    false    219    3            �           0    0    usuario_usuario_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_usuario_id_seq OWNED BY public.usuario_usuario.id;
            public       adminnn    false    218            �
           2604    24858    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    203    202    203            �
           2604    24868    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    205    204    205            �
           2604    24850    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    200    201    201            �
           2604    24876    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    207    206    207            �
           2604    24886    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    209    208    209            �
           2604    24894    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    211    210    211            �
           2604    24995    autor_autor id    DEFAULT     p   ALTER TABLE ONLY public.autor_autor ALTER COLUMN id SET DEFAULT nextval('public.autor_autor_id_seq'::regclass);
 =   ALTER TABLE public.autor_autor ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    217    216    217            �
           2604    24954    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    213    212    213            �
           2604    24840    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    199    198    199            �
           2604    24829    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    197    196    197            �
           2604    24987    libro_libro id    DEFAULT     p   ALTER TABLE ONLY public.libro_libro ALTER COLUMN id SET DEFAULT nextval('public.libro_libro_id_seq'::regclass);
 =   ALTER TABLE public.libro_libro ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    214    215    215            �
           2604    25017    prestamos_prestamos id    DEFAULT     �   ALTER TABLE ONLY public.prestamos_prestamos ALTER COLUMN id SET DEFAULT nextval('public.prestamos_prestamos_id_seq'::regclass);
 E   ALTER TABLE public.prestamos_prestamos ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    221    220    221            �
           2604    25009    usuario_usuario id    DEFAULT     x   ALTER TABLE ONLY public.usuario_usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_usuario_id_seq'::regclass);
 A   ALTER TABLE public.usuario_usuario ALTER COLUMN id DROP DEFAULT;
       public       adminnn    false    218    219    219            �          0    24855 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       adminnn    false    203   H�       �          0    24865    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       adminnn    false    205   e�       �          0    24847    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       adminnn    false    201   ��       �          0    24873 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       adminnn    false    207   )�       �          0    24883    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       adminnn    false    209   ܱ       �          0    24891    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       adminnn    false    211   ��       �          0    24992    autor_autor 
   TABLE DATA               M   COPY public.autor_autor (id, "Nombre", "Nacionalidad", libro_id) FROM stdin;
    public       adminnn    false    217   �       �          0    24951    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       adminnn    false    213   ͳ       �          0    24837    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       adminnn    false    199   ��       �          0    24826    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       adminnn    false    197   �       �          0    25032    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       adminnn    false    222   �       �          0    24984    libro_libro 
   TABLE DATA               ]   COPY public.libro_libro (id, "Codigo", "Titulo", "ISBN", "Editorial", "Numpags") FROM stdin;
    public       adminnn    false    215   �       �          0    25014    prestamos_prestamos 
   TABLE DATA               g   COPY public.prestamos_prestamos (id, "FecPrestamo", "FecDevolucion", libro_id, usuario_id) FROM stdin;
    public       adminnn    false    221   q�       �          0    25006    usuario_usuario 
   TABLE DATA               e   COPY public.usuario_usuario (id, "NumUsuario", "NIF", "Nombre", "Direccion", "Telefono") FROM stdin;
    public       adminnn    false    219   a�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       adminnn    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       adminnn    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
            public       adminnn    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       adminnn    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
            public       adminnn    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       adminnn    false    210            �           0    0    autor_autor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.autor_autor_id_seq', 20, true);
            public       adminnn    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 60, true);
            public       adminnn    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
            public       adminnn    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
            public       adminnn    false    196            �           0    0    libro_libro_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.libro_libro_id_seq', 22, true);
            public       adminnn    false    214            �           0    0    prestamos_prestamos_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.prestamos_prestamos_id_seq', 20, true);
            public       adminnn    false    220            �           0    0    usuario_usuario_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuario_usuario_id_seq', 26, true);
            public       adminnn    false    218            �
           2606    24980    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         adminnn    false    203            �
           2606    24907 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         adminnn    false    205    205            �
           2606    24870 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         adminnn    false    205            �
           2606    24860    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         adminnn    false    203            �
           2606    24898 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         adminnn    false    201    201            �
           2606    24852 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         adminnn    false    201            �
           2606    24888 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         adminnn    false    209            �
           2606    24922 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         adminnn    false    209    209            �
           2606    24878    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         adminnn    false    207            �
           2606    24896 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         adminnn    false    211            �
           2606    24936 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         adminnn    false    211    211            �
           2606    24974     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         adminnn    false    207            �
           2606    24997    autor_autor autor_autor_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.autor_autor
    ADD CONSTRAINT autor_autor_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.autor_autor DROP CONSTRAINT autor_autor_pkey;
       public         adminnn    false    217            �
           2606    24960 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         adminnn    false    213            �
           2606    24844 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         adminnn    false    199    199            �
           2606    24842 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         adminnn    false    199            �
           2606    24834 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         adminnn    false    197                       2606    25039 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         adminnn    false    222            �
           2606    24989    libro_libro libro_libro_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.libro_libro
    ADD CONSTRAINT libro_libro_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.libro_libro DROP CONSTRAINT libro_libro_pkey;
       public         adminnn    false    215                        2606    25019 ,   prestamos_prestamos prestamos_prestamos_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.prestamos_prestamos
    ADD CONSTRAINT prestamos_prestamos_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.prestamos_prestamos DROP CONSTRAINT prestamos_prestamos_pkey;
       public         adminnn    false    221            �
           2606    25011 $   usuario_usuario usuario_usuario_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.usuario_usuario
    ADD CONSTRAINT usuario_usuario_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.usuario_usuario DROP CONSTRAINT usuario_usuario_pkey;
       public         adminnn    false    219            �
           1259    24981    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         adminnn    false    203            �
           1259    24918 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         adminnn    false    205            �
           1259    24919 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         adminnn    false    205            �
           1259    24904 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         adminnn    false    201            �
           1259    24934 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         adminnn    false    209            �
           1259    24933 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         adminnn    false    209            �
           1259    24948 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         adminnn    false    211            �
           1259    24947 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         adminnn    false    211            �
           1259    24975     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         adminnn    false    207            �
           1259    25003    autor_autor_libro_id_a329f80e    INDEX     Y   CREATE INDEX autor_autor_libro_id_a329f80e ON public.autor_autor USING btree (libro_id);
 1   DROP INDEX public.autor_autor_libro_id_a329f80e;
       public         adminnn    false    217            �
           1259    24971 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         adminnn    false    213            �
           1259    24972 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         adminnn    false    213                       1259    25041 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         adminnn    false    222                       1259    25040 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         adminnn    false    222            �
           1259    25030 %   prestamos_prestamos_libro_id_5abd4b61    INDEX     i   CREATE INDEX prestamos_prestamos_libro_id_5abd4b61 ON public.prestamos_prestamos USING btree (libro_id);
 9   DROP INDEX public.prestamos_prestamos_libro_id_5abd4b61;
       public         adminnn    false    221                       1259    25031 '   prestamos_prestamos_usuario_id_89ee6c12    INDEX     m   CREATE INDEX prestamos_prestamos_usuario_id_89ee6c12 ON public.prestamos_prestamos USING btree (usuario_id);
 ;   DROP INDEX public.prestamos_prestamos_usuario_id_89ee6c12;
       public         adminnn    false    221                       2606    24913 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       adminnn    false    201    2774    205                       2606    24908 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       adminnn    false    205    203    2779                       2606    24899 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       adminnn    false    2769    199    201            
           2606    24928 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       adminnn    false    203    209    2779            	           2606    24923 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       adminnn    false    207    2787    209                       2606    24942 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       adminnn    false    211    2774    201                       2606    24937 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       adminnn    false    207    211    2787                       2606    24998 ;   autor_autor autor_autor_libro_id_a329f80e_fk_libro_libro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.autor_autor
    ADD CONSTRAINT autor_autor_libro_id_a329f80e_fk_libro_libro_id FOREIGN KEY (libro_id) REFERENCES public.libro_libro(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.autor_autor DROP CONSTRAINT autor_autor_libro_id_a329f80e_fk_libro_libro_id;
       public       adminnn    false    217    2808    215                       2606    24961 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       adminnn    false    199    213    2769                       2606    24966 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       adminnn    false    213    2787    207                       2606    25020 K   prestamos_prestamos prestamos_prestamos_libro_id_5abd4b61_fk_libro_libro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestamos_prestamos
    ADD CONSTRAINT prestamos_prestamos_libro_id_5abd4b61_fk_libro_libro_id FOREIGN KEY (libro_id) REFERENCES public.libro_libro(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.prestamos_prestamos DROP CONSTRAINT prestamos_prestamos_libro_id_5abd4b61_fk_libro_libro_id;
       public       adminnn    false    215    2808    221                       2606    25025 Q   prestamos_prestamos prestamos_prestamos_usuario_id_89ee6c12_fk_usuario_usuario_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestamos_prestamos
    ADD CONSTRAINT prestamos_prestamos_usuario_id_89ee6c12_fk_usuario_usuario_id FOREIGN KEY (usuario_id) REFERENCES public.usuario_usuario(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.prestamos_prestamos DROP CONSTRAINT prestamos_prestamos_usuario_id_89ee6c12_fk_usuario_usuario_id;
       public       adminnn    false    221    2813    219            �      x������ � �      �      x������ � �      �   �  x�]�[n�0E��U��*<�ۨT��J�R����������i�Ľ��}���v+�^�iMOW�������+@���t��'k o�VⓀ��c�3�� �9��!���2��U�&���Hv�m��aIP��(�g�{���j��/OZ���EH��!B*Qa ,h\g�m	�5 p}���4����vh9�McX��6o��iݿZ�>���`@Oǋ/;-����{���櫓h�Рk�2[/�����+�wa�3c&킑^�T���H҇m�ɵ�g_���\1�f�<Qqf h,)~�_)�� ���&�<��#bR���b��8��),���c���k�g�q�5��(W]P�qb�kU϶!����Ʈ��ם�[�r��m�2���\s�����7��?����      �   �   x�]��
�@ ���-�:�{u&G*KD�i����$���k��p�=nuz�볈IH�P��ν2����H7��0���jJ���@͋fHN����EC���d�]-��`�9C�!��QY��ldq��Q1ƪ��:��2o��I��t������R��k�i�*�/c      �      x������ � �      �      x������ � �      �   �  x�m�=n�@���Sl�4���/��"�0!Ҍ�1��rG�%�X7r�"�t��"M�Y`0�>����-�U+>����d���LeO���������!�1<0�ڮ������#df��Hҳ-*�{����al��Ǟ�g�ts�;^	{N3�J�d�����'�-�8R����F0V>Ul�  O{���Y�M�#��@�&����&��%����N��+��P�}dX7�[N�7[�`��A�f�W��q�I���Iɑ+_3��ql�&Q��B�.��~c��j��ţ�;g����g��B��\f�J�tC��Fh��cuc㦰����c��&��`�ѫ Y��<�|�*�| /����#�����3B9����-�.U(���H'��-��f�-���Zݴv�?�������F���0?�c�����      �   �  x����n�6�ϛ� |j��?E]
�q�4��$큫e�l��!��&E���>�_�Cɛ�Rf�D�	�����|�M�0�)��#�+i*.#(
��L~f�Ƶ��m���vׅo^�k�Ѷ�.�bAɂ>`�ቊ��B�Ry�9f��گ]��-�-�5��.��qb�k�>����ˢOieEiQ2Z�e���_�:4�5hz*�s�`%RM����R�K�m�����r0��LE�<��?���z�X��E�����$+WʈHS��1�ag7���iЛK',J*N
�72��Bc*�iS���{�~���)��brʍY��B�3_7���reR
��.S��H1�)$���vA��k�4YB�!�1B�1�	��t5�e;�x{��mk��?�)TT��d�{��be�S��m�k��:�g��B���0�1�� ��6�ʯo�փ��w9b*�*�
�?R*��,��kLM��
8 �$�t	x0���k|[.f�z7�&�L�@u*�����4>��4�CL ("�%U0-��LLVj�`7��-�[��p&S1^pɄ�	|���e�����|η�L�YUΙ�`�r*�6�f�Zt66_*Fb|�2M�XR���Ek��lAX*F+&
��f����1��z�[�@E��\G�T$���*8�J�H	>��ݕEgWQ���l{WuD�"$������-.w��ʵ�o7���i��ʃ��ւ#��+^۬�C{�@Y��]�Y����E/+�"D����v�]@�u�/�-����]�y�B��L!Z��݅��l �'�,��,���QS� U�B�E�w�3p�У������w7���'{Zw����P�m�hS���<��D�� �m��݁砩` �d�@Υڛ��ޮ�OX5�?�X6�q�#GK��|�,������?�G|�m`��6(�IG���T\�������Х��L���`?f�3���"-��b~t���/���6��N1���r`�K�vU2s��G�,�	��v���=]m�y=�]��'a�&�a��)og��6?� �Dϻ�i��E�6�ߞ���-��o�C�F�:7��"u>Ӓ�8W�I���<��G���>�j���LC��`6V�5���ʶ�	x�λf�����S����/_~�LQ%���=)j򲇶D��<�����7�w�p4�w���̔UV����ĭ��������w�Y|9��P�LU��B>����y_�������^	;����������G5aG����n{�.��}��+wߠ��8��������N��8�ajC���.��`��')�4i��8��85����%<��ǣ�9\*#�cp%/��
C�r| xox���w���RFO�K"����)ˆ�
�ˊp(14�ڛ�������~�P�^ EK�3�R���p�R� \�|�$���\�@��j��C�ʃ+x�X���sT���&Sap/4�2J���ܾ-㌇n&�� B�i���-	�o��w{�g��5�LI*��1KRN]�����DQ�f �`��O��ޛ��*�q�����Z�
rO}�L����\]eb�F�\<�3]�U.2����a���I��+�S���C���xT���L�B���L<<m�:M|���1��EIU"h�,�%1������U�R��q4KN�������.<x�/P�h      �   v   x�M�K�0Dמ� ʟ��	`KM�΢��U����4�g�B��\�f�(�xQe��.Z���h�*�4gÑZb�b���'r�Ҿ�?�ZW\h��iW\�{���K��OK&�:n o�q=�      �   �  x����n� ��ӧ���!�g9b-됒��ַ?@���2�7�I�/�g������e�� �ntə�! �#쉽 {%|%v !�{hwԘ9}l'8 'V�1���[~ B��D�=B���\h��`�eu����tZe �D^���昜�{o�����1Xe!�de�_�觚�]���v%�`]Au�?ҦO6�Ɇ��XJ*y=�o���ZEu��*V.(vC�1?�`\�E!�ZV�
��G-�Oi]Q˥(���>2zSQ�rgs�>t��n��r?g�U�.��`(NT!���n�|�ޝL�!���|Ѓ�ќ��;	b�ق��r6,3&Q�J�I�R��l�E�?(���<=��$+F,��Y=�}yX�u?������H�]���l[���N6�{~�NpN
����>lgZ�U_4s�MpO�I�R�#F�L��d�y.sNQW%5��Tn�$ j_����?V1�?      �   
  x���n�0  �g���@M[
(ohVj��\���]����9Bu*���zR��x4U9»�ɼN*Q�ˌ��t�ݩ�N����-�d���]���v�v��~��i�W����������za.�nE��\`1��!��yHhԞ8B0�o�by�_Ѡi��p�\-��S��kn��.��g�#�<�ܣ�}s��,2���DU�����t\��Ky��4�Tv��IVr\$^���Ō���Y1�!�Ě��%F����.E�	]�      �   E  x�E�Mn�0���S�.D�P֪p��h$A�E��Xb)����g���� )7��o�E��X�e�"]���e*ph\���F�T�a���G��z�R�F7h�BTTѽ탓��1�et�\�<��55�|.9��]֒T�t׉�Z��3�O����L��=HN/��؛��m�����j��>�s����m'��hѓv�����<�H��0���Z�m�lA�iϩ�/f���T�#gG�@B���0{��'��-�*��������8�ya߿:ؾ���'�=q�����6;�/	�~4�x�ʆ����5{tHg��/���LA���}43)\�����v��F��6u�7����Y+TMeCW�Y�'�)%�3;�Z����f�@ ^,H�Gԇ��d�٢��!Ÿ�Rh��s����	��*1̵m|
+���j����������H�_���SBm_��t�72y�N���t��U�ox$ԎtE�3���삡�Z�M�d!�"���e=;L�����ݶ���ݽ��B�R��j�>�_��\�����,�����3�;{�LkaYYሟ�� {��      �   �   x�eQ�m !���)Ix�����R�HBlcL�Ӫ jɲ��M5ٜM����F��媺`�УP^:]���I��n��$�I��Re<k���y��l�0$�]��R۠KǼ�}"�V�B]�4i0�=Kg�!�e$����S&"�c�"�Y���-�E|'��	lC�M7�|��7,�~����Ʈ��(}����+B�Ӻ��q���e�5��=����S\|      �   Y  x�mR�n�@<�|�� ̌=~7lH�B6�Kq�]O6��3��h7�7�c�m�CBjY��\U]��K_9��]rQ��ʵ8�����,˄��v�OW���������p囵�6xXkE���c�#��?1�u;l�#�&/��(�H�"��y9������v��,�TXX(�
�#�E�9h��6c
�!��xO��	6Cbt*r�P�.��Y���̛'vr 
P�<�	�6��ͺ�5�,�@)J�P)�����<h�)�zQ^EvݡH�ܚLh.e_�+���w������vBkp��]�����m"7�_W�2��,��P9���.����Xۅ���~�����:�N�
ܸ��,���8FnYpW�8�ßF)t���p�CS=��7�-��>����9�B)�P+t��q
�]]G��T>td6eX�ip���w$?��/��#Z�8�]F��W�#��c��x©���d��5��N5:�bS~��v��NO�X�;����
����3������/)�$9cbt����#�������w��W�p °-���g�u~C/�A6E�E�U�� ���ߧh&c�0�H¸3��|���b�_�
!~���4     