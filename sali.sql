PGDMP         -             
    {            sali    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'BIG5';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16401    sali    DATABASE     v   CREATE DATABASE sali WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Persian_Iran.1256';
    DROP DATABASE sali;
                postgres    false            �            1259    24602 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    sali    false            �            1259    24601    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          sali    false    221            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          sali    false    220            �            1259    24611    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    sali    false            �            1259    24610    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          sali    false    223            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          sali    false    222            �            1259    24595    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    sali    false            �            1259    24594    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          sali    false    219            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          sali    false    218            �            1259    24618 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    sali    false            �            1259    24627    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    sali    false            �            1259    24626    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          sali    false    227            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          sali    false    226            �            1259    24617    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          sali    false    225            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          sali    false    224            �            1259    24634    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    sali    false            �            1259    24633 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          sali    false    229            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          sali    false    228            �            1259    24693    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    sali    false            �            1259    24692    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          sali    false    231            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          sali    false    230            �            1259    24586    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    sali    false            �            1259    24585    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          sali    false    217            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          sali    false    216            �            1259    24577    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    sali    false            �            1259    24576    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          sali    false    215            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          sali    false    214            �            1259    24795    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    sali    false            �            1259    24826    finance_payment    TABLE     B  CREATE TABLE public.finance_payment (
    id bigint NOT NULL,
    invoice_number uuid NOT NULL,
    amount integer NOT NULL,
    is_paid boolean NOT NULL,
    payment_log text NOT NULL,
    authority character varying(64) NOT NULL,
    user_id integer,
    CONSTRAINT finance_payment_amount_check CHECK ((amount >= 0))
);
 #   DROP TABLE public.finance_payment;
       public         heap    sali    false            �            1259    24825    finance_payment_id_seq    SEQUENCE        CREATE SEQUENCE public.finance_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.finance_payment_id_seq;
       public          sali    false    246            �           0    0    finance_payment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.finance_payment_id_seq OWNED BY public.finance_payment.id;
          public          sali    false    245            �            1259    24850    finance_paypu    TABLE     m   CREATE TABLE public.finance_paypu (
    id bigint NOT NULL,
    payment_id bigint,
    purchase_id bigint
);
 !   DROP TABLE public.finance_paypu;
       public         heap    sali    false            �            1259    24849    finance_paypu_id_seq    SEQUENCE     }   CREATE SEQUENCE public.finance_paypu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.finance_paypu_id_seq;
       public          sali    false    248            �           0    0    finance_paypu_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.finance_paypu_id_seq OWNED BY public.finance_paypu.id;
          public          sali    false    247            �            1259    24723    product_brand    TABLE     ~   CREATE TABLE public.product_brand (
    id bigint NOT NULL,
    brand character varying(32) NOT NULL,
    parent_id bigint
);
 !   DROP TABLE public.product_brand;
       public         heap    sali    false            �            1259    24722    product_brand_id_seq    SEQUENCE     }   CREATE SEQUENCE public.product_brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_brand_id_seq;
       public          sali    false    233            �           0    0    product_brand_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_brand_id_seq OWNED BY public.product_brand.id;
          public          sali    false    232            �            1259    24730    product_product    TABLE     M  CREATE TABLE public.product_product (
    id bigint NOT NULL,
    name character varying(32) NOT NULL,
    category smallint NOT NULL,
    is_enable boolean NOT NULL,
    description text,
    created_time timestamp with time zone NOT NULL,
    upc character varying(12),
    brand_id bigint NOT NULL,
    type_id bigint NOT NULL
);
 #   DROP TABLE public.product_product;
       public         heap    sali    false            �            1259    24729    product_product_id_seq    SEQUENCE        CREATE SEQUENCE public.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          sali    false    235            �           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product_product.id;
          public          sali    false    234            �            1259    24753    product_productseller    TABLE     �   CREATE TABLE public.product_productseller (
    id bigint NOT NULL,
    price smallint NOT NULL,
    quantity smallint NOT NULL,
    product_id bigint NOT NULL,
    seller_id bigint NOT NULL
);
 )   DROP TABLE public.product_productseller;
       public         heap    sali    false            �            1259    24752    product_productseller_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_productseller_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.product_productseller_id_seq;
       public          sali    false    241            �           0    0    product_productseller_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.product_productseller_id_seq OWNED BY public.product_productseller.id;
          public          sali    false    240            �            1259    24746    product_seller    TABLE     �   CREATE TABLE public.product_seller (
    id bigint NOT NULL,
    phone_number character varying(11) NOT NULL,
    user_id integer NOT NULL
);
 "   DROP TABLE public.product_seller;
       public         heap    sali    false            �            1259    24745    product_seller_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.product_seller_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_seller_id_seq;
       public          sali    false    239            �           0    0    product_seller_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_seller_id_seq OWNED BY public.product_seller.id;
          public          sali    false    238            �            1259    24739    product_type    TABLE     f   CREATE TABLE public.product_type (
    id bigint NOT NULL,
    type character varying(32) NOT NULL
);
     DROP TABLE public.product_type;
       public         heap    sali    false            �            1259    24738    product_type_id_seq    SEQUENCE     |   CREATE SEQUENCE public.product_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_type_id_seq;
       public          sali    false    237            �           0    0    product_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_type_id_seq OWNED BY public.product_type.id;
          public          sali    false    236            �            1259    24806    purchase_purchase    TABLE       CREATE TABLE public.purchase_purchase (
    id bigint NOT NULL,
    is_paid boolean NOT NULL,
    created_time timestamp with time zone NOT NULL,
    product_seller_id bigint NOT NULL,
    user_id integer NOT NULL,
    quantity smallint NOT NULL,
    is_enable boolean NOT NULL
);
 %   DROP TABLE public.purchase_purchase;
       public         heap    sali    false            �            1259    24805    purchase_purchase_id_seq    SEQUENCE     �   CREATE SEQUENCE public.purchase_purchase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.purchase_purchase_id_seq;
       public          sali    false    244            �           0    0    purchase_purchase_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.purchase_purchase_id_seq OWNED BY public.purchase_purchase.id;
          public          sali    false    243            �           2604    24605    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          sali    false    221    220    221            �           2604    24614    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          sali    false    222    223    223            �           2604    24598    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          sali    false    219    218    219            �           2604    24621    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          sali    false    224    225    225            �           2604    24630    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          sali    false    227    226    227            �           2604    24637    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          sali    false    229    228    229            �           2604    24696    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          sali    false    230    231    231            �           2604    24589    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          sali    false    216    217    217            �           2604    24580    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          sali    false    214    215    215            �           2604    24829    finance_payment id    DEFAULT     x   ALTER TABLE ONLY public.finance_payment ALTER COLUMN id SET DEFAULT nextval('public.finance_payment_id_seq'::regclass);
 A   ALTER TABLE public.finance_payment ALTER COLUMN id DROP DEFAULT;
       public          sali    false    246    245    246            �           2604    24853    finance_paypu id    DEFAULT     t   ALTER TABLE ONLY public.finance_paypu ALTER COLUMN id SET DEFAULT nextval('public.finance_paypu_id_seq'::regclass);
 ?   ALTER TABLE public.finance_paypu ALTER COLUMN id DROP DEFAULT;
       public          sali    false    247    248    248            �           2604    24726    product_brand id    DEFAULT     t   ALTER TABLE ONLY public.product_brand ALTER COLUMN id SET DEFAULT nextval('public.product_brand_id_seq'::regclass);
 ?   ALTER TABLE public.product_brand ALTER COLUMN id DROP DEFAULT;
       public          sali    false    232    233    233            �           2604    24733    product_product id    DEFAULT     x   ALTER TABLE ONLY public.product_product ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product_product ALTER COLUMN id DROP DEFAULT;
       public          sali    false    234    235    235            �           2604    24756    product_productseller id    DEFAULT     �   ALTER TABLE ONLY public.product_productseller ALTER COLUMN id SET DEFAULT nextval('public.product_productseller_id_seq'::regclass);
 G   ALTER TABLE public.product_productseller ALTER COLUMN id DROP DEFAULT;
       public          sali    false    240    241    241            �           2604    24749    product_seller id    DEFAULT     v   ALTER TABLE ONLY public.product_seller ALTER COLUMN id SET DEFAULT nextval('public.product_seller_id_seq'::regclass);
 @   ALTER TABLE public.product_seller ALTER COLUMN id DROP DEFAULT;
       public          sali    false    238    239    239            �           2604    24742    product_type id    DEFAULT     r   ALTER TABLE ONLY public.product_type ALTER COLUMN id SET DEFAULT nextval('public.product_type_id_seq'::regclass);
 >   ALTER TABLE public.product_type ALTER COLUMN id DROP DEFAULT;
       public          sali    false    236    237    237            �           2604    24809    purchase_purchase id    DEFAULT     |   ALTER TABLE ONLY public.purchase_purchase ALTER COLUMN id SET DEFAULT nextval('public.purchase_purchase_id_seq'::regclass);
 C   ALTER TABLE public.purchase_purchase ALTER COLUMN id DROP DEFAULT;
       public          sali    false    244    243    244            �          0    24602 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          sali    false    221   ��       �          0    24611    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          sali    false    223   ��       �          0    24595    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          sali    false    219   ��       �          0    24618 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          sali    false    225   ��       �          0    24627    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          sali    false    227   G�       �          0    24634    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          sali    false    229   d�       �          0    24693    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          sali    false    231   ��       �          0    24586    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          sali    false    217   �       �          0    24577    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          sali    false    215   ��       �          0    24795    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          sali    false    242   ��       �          0    24826    finance_payment 
   TABLE DATA           o   COPY public.finance_payment (id, invoice_number, amount, is_paid, payment_log, authority, user_id) FROM stdin;
    public          sali    false    246   �       �          0    24850    finance_paypu 
   TABLE DATA           D   COPY public.finance_paypu (id, payment_id, purchase_id) FROM stdin;
    public          sali    false    248   ��       �          0    24723    product_brand 
   TABLE DATA           =   COPY public.product_brand (id, brand, parent_id) FROM stdin;
    public          sali    false    233   ��       �          0    24730    product_product 
   TABLE DATA           {   COPY public.product_product (id, name, category, is_enable, description, created_time, upc, brand_id, type_id) FROM stdin;
    public          sali    false    235   ��       �          0    24753    product_productseller 
   TABLE DATA           [   COPY public.product_productseller (id, price, quantity, product_id, seller_id) FROM stdin;
    public          sali    false    241   ��       �          0    24746    product_seller 
   TABLE DATA           C   COPY public.product_seller (id, phone_number, user_id) FROM stdin;
    public          sali    false    239   ��       �          0    24739    product_type 
   TABLE DATA           0   COPY public.product_type (id, type) FROM stdin;
    public          sali    false    237   
       �          0    24806    purchase_purchase 
   TABLE DATA           w   COPY public.purchase_purchase (id, is_paid, created_time, product_seller_id, user_id, quantity, is_enable) FROM stdin;
    public          sali    false    244   /       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          sali    false    220            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          sali    false    222            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          sali    false    218            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          sali    false    226            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          sali    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          sali    false    228            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 35, true);
          public          sali    false    230            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          sali    false    216            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
          public          sali    false    214            �           0    0    finance_payment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.finance_payment_id_seq', 24, true);
          public          sali    false    245            �           0    0    finance_paypu_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.finance_paypu_id_seq', 518, true);
          public          sali    false    247            �           0    0    product_brand_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_brand_id_seq', 1, true);
          public          sali    false    232                        0    0    product_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_product_id_seq', 3, true);
          public          sali    false    234                       0    0    product_productseller_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.product_productseller_id_seq', 6, true);
          public          sali    false    240                       0    0    product_seller_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_seller_id_seq', 2, true);
          public          sali    false    238                       0    0    product_type_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_type_id_seq', 1, true);
          public          sali    false    236                       0    0    purchase_purchase_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.purchase_purchase_id_seq', 110, true);
          public          sali    false    243            �           2606    24720    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            sali    false    221            �           2606    24650 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            sali    false    223    223            �           2606    24616 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            sali    false    223            �           2606    24607    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            sali    false    221            �           2606    24641 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            sali    false    219    219            �           2606    24600 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            sali    false    219            �           2606    24632 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            sali    false    227            �           2606    24665 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            sali    false    227    227            �           2606    24623    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            sali    false    225            �           2606    24639 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            sali    false    229            �           2606    24679 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            sali    false    229    229            �           2606    24715     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            sali    false    225            �           2606    24701 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            sali    false    231            �           2606    24593 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            sali    false    217    217            �           2606    24591 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            sali    false    217            �           2606    24584 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            sali    false    215            	           2606    24801 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            sali    false    242                       2606    24836 2   finance_payment finance_payment_invoice_number_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.finance_payment
    ADD CONSTRAINT finance_payment_invoice_number_key UNIQUE (invoice_number);
 \   ALTER TABLE ONLY public.finance_payment DROP CONSTRAINT finance_payment_invoice_number_key;
       public            sali    false    246                       2606    24834 $   finance_payment finance_payment_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.finance_payment
    ADD CONSTRAINT finance_payment_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.finance_payment DROP CONSTRAINT finance_payment_pkey;
       public            sali    false    246                       2606    24855     finance_paypu finance_paypu_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.finance_paypu
    ADD CONSTRAINT finance_paypu_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.finance_paypu DROP CONSTRAINT finance_paypu_pkey;
       public            sali    false    248            �           2606    24728     product_brand product_brand_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_brand
    ADD CONSTRAINT product_brand_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_brand DROP CONSTRAINT product_brand_pkey;
       public            sali    false    233            �           2606    24737 $   product_product product_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_pkey;
       public            sali    false    235                       2606    24758 0   product_productseller product_productseller_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.product_productseller
    ADD CONSTRAINT product_productseller_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.product_productseller DROP CONSTRAINT product_productseller_pkey;
       public            sali    false    241                       2606    24751 "   product_seller product_seller_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_seller
    ADD CONSTRAINT product_seller_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_seller DROP CONSTRAINT product_seller_pkey;
       public            sali    false    239            �           2606    24744    product_type product_type_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_type DROP CONSTRAINT product_type_pkey;
       public            sali    false    237                       2606    24811 (   purchase_purchase purchase_purchase_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.purchase_purchase
    ADD CONSTRAINT purchase_purchase_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.purchase_purchase DROP CONSTRAINT purchase_purchase_pkey;
       public            sali    false    244            �           1259    24721    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            sali    false    221            �           1259    24661 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            sali    false    223            �           1259    24662 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            sali    false    223            �           1259    24647 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            sali    false    219            �           1259    24677 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            sali    false    227            �           1259    24676 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            sali    false    227            �           1259    24691 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            sali    false    229            �           1259    24690 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            sali    false    229            �           1259    24716     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            sali    false    225            �           1259    24712 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            sali    false    231            �           1259    24713 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            sali    false    231                       1259    24803 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            sali    false    242            
           1259    24802 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            sali    false    242                       1259    24842     finance_payment_user_id_e5178749    INDEX     _   CREATE INDEX finance_payment_user_id_e5178749 ON public.finance_payment USING btree (user_id);
 4   DROP INDEX public.finance_payment_user_id_e5178749;
       public            sali    false    246                       1259    24866 !   finance_paypu_payment_id_ac4f1eb9    INDEX     a   CREATE INDEX finance_paypu_payment_id_ac4f1eb9 ON public.finance_paypu USING btree (payment_id);
 5   DROP INDEX public.finance_paypu_payment_id_ac4f1eb9;
       public            sali    false    248                       1259    24867 "   finance_paypu_purchase_id_7650dd58    INDEX     c   CREATE INDEX finance_paypu_purchase_id_7650dd58 ON public.finance_paypu USING btree (purchase_id);
 6   DROP INDEX public.finance_paypu_purchase_id_7650dd58;
       public            sali    false    248            �           1259    24769     product_brand_parent_id_5c2aaab8    INDEX     _   CREATE INDEX product_brand_parent_id_5c2aaab8 ON public.product_brand USING btree (parent_id);
 4   DROP INDEX public.product_brand_parent_id_5c2aaab8;
       public            sali    false    233            �           1259    24775 !   product_product_brand_id_fcf1b3f3    INDEX     a   CREATE INDEX product_product_brand_id_fcf1b3f3 ON public.product_product USING btree (brand_id);
 5   DROP INDEX public.product_product_brand_id_fcf1b3f3;
       public            sali    false    235            �           1259    24794     product_product_type_id_db92a7b7    INDEX     _   CREATE INDEX product_product_type_id_db92a7b7 ON public.product_product USING btree (type_id);
 4   DROP INDEX public.product_product_type_id_db92a7b7;
       public            sali    false    235                       1259    24792 )   product_productseller_product_id_44310adf    INDEX     q   CREATE INDEX product_productseller_product_id_44310adf ON public.product_productseller USING btree (product_id);
 =   DROP INDEX public.product_productseller_product_id_44310adf;
       public            sali    false    241                       1259    24793 (   product_productseller_seller_id_04986b93    INDEX     o   CREATE INDEX product_productseller_seller_id_04986b93 ON public.product_productseller USING btree (seller_id);
 <   DROP INDEX public.product_productseller_seller_id_04986b93;
       public            sali    false    241                       1259    24781    product_seller_user_id_2f04ed15    INDEX     ]   CREATE INDEX product_seller_user_id_2f04ed15 ON public.product_seller USING btree (user_id);
 3   DROP INDEX public.product_seller_user_id_2f04ed15;
       public            sali    false    239                       1259    24822 ,   purchase_purchase_product_seller_id_561e4a7a    INDEX     w   CREATE INDEX purchase_purchase_product_seller_id_561e4a7a ON public.purchase_purchase USING btree (product_seller_id);
 @   DROP INDEX public.purchase_purchase_product_seller_id_561e4a7a;
       public            sali    false    244                       1259    24823 "   purchase_purchase_user_id_9ecb2dde    INDEX     c   CREATE INDEX purchase_purchase_user_id_9ecb2dde ON public.purchase_purchase USING btree (user_id);
 6   DROP INDEX public.purchase_purchase_user_id_9ecb2dde;
       public            sali    false    244                       2606    24656 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          sali    false    219    223    3286                       2606    24651 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          sali    false    3291    221    223                       2606    24642 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          sali    false    3281    219    217                       2606    24671 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          sali    false    227    3291    221                       2606    24666 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          sali    false    3299    225    227                       2606    24685 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          sali    false    3286    219    229                       2606    24680 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          sali    false    225    3299    229                       2606    24702 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          sali    false    217    3281    231                        2606    24707 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          sali    false    231    3299    225            )           2606    24837 @   finance_payment finance_payment_user_id_e5178749_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.finance_payment
    ADD CONSTRAINT finance_payment_user_id_e5178749_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.finance_payment DROP CONSTRAINT finance_payment_user_id_e5178749_fk_auth_user_id;
       public          sali    false    225    246    3299            *           2606    24856 E   finance_paypu finance_paypu_payment_id_ac4f1eb9_fk_finance_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.finance_paypu
    ADD CONSTRAINT finance_paypu_payment_id_ac4f1eb9_fk_finance_payment_id FOREIGN KEY (payment_id) REFERENCES public.finance_payment(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.finance_paypu DROP CONSTRAINT finance_paypu_payment_id_ac4f1eb9_fk_finance_payment_id;
       public          sali    false    246    3346    248            +           2606    24861 H   finance_paypu finance_paypu_purchase_id_7650dd58_fk_purchase_purchase_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.finance_paypu
    ADD CONSTRAINT finance_paypu_purchase_id_7650dd58_fk_purchase_purchase_id FOREIGN KEY (purchase_id) REFERENCES public.purchase_purchase(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.finance_paypu DROP CONSTRAINT finance_paypu_purchase_id_7650dd58_fk_purchase_purchase_id;
       public          sali    false    248    3340    244            !           2606    24764 B   product_brand product_brand_parent_id_5c2aaab8_fk_product_brand_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_brand
    ADD CONSTRAINT product_brand_parent_id_5c2aaab8_fk_product_brand_id FOREIGN KEY (parent_id) REFERENCES public.product_brand(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.product_brand DROP CONSTRAINT product_brand_parent_id_5c2aaab8_fk_product_brand_id;
       public          sali    false    233    233    3321            "           2606    24770 E   product_product product_product_brand_id_fcf1b3f3_fk_product_brand_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_brand_id_fcf1b3f3_fk_product_brand_id FOREIGN KEY (brand_id) REFERENCES public.product_brand(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_brand_id_fcf1b3f3_fk_product_brand_id;
       public          sali    false    233    3321    235            #           2606    24759 C   product_product product_product_type_id_db92a7b7_fk_product_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_type_id_db92a7b7_fk_product_type_id FOREIGN KEY (type_id) REFERENCES public.product_type(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_type_id_db92a7b7_fk_product_type_id;
       public          sali    false    235    3327    237            %           2606    24782 U   product_productseller product_productseller_product_id_44310adf_fk_product_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_productseller
    ADD CONSTRAINT product_productseller_product_id_44310adf_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.product_productseller DROP CONSTRAINT product_productseller_product_id_44310adf_fk_product_product_id;
       public          sali    false    3324    241    235            &           2606    24787 S   product_productseller product_productseller_seller_id_04986b93_fk_product_seller_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_productseller
    ADD CONSTRAINT product_productseller_seller_id_04986b93_fk_product_seller_id FOREIGN KEY (seller_id) REFERENCES public.product_seller(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.product_productseller DROP CONSTRAINT product_productseller_seller_id_04986b93_fk_product_seller_id;
       public          sali    false    3329    241    239            $           2606    24776 >   product_seller product_seller_user_id_2f04ed15_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_seller
    ADD CONSTRAINT product_seller_user_id_2f04ed15_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.product_seller DROP CONSTRAINT product_seller_user_id_2f04ed15_fk_auth_user_id;
       public          sali    false    3299    239    225            '           2606    24812 K   purchase_purchase purchase_purchase_product_seller_id_561e4a7a_fk_product_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchase_purchase
    ADD CONSTRAINT purchase_purchase_product_seller_id_561e4a7a_fk_product_p FOREIGN KEY (product_seller_id) REFERENCES public.product_productseller(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.purchase_purchase DROP CONSTRAINT purchase_purchase_product_seller_id_561e4a7a_fk_product_p;
       public          sali    false    241    244    3332            (           2606    24817 D   purchase_purchase purchase_purchase_user_id_9ecb2dde_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchase_purchase
    ADD CONSTRAINT purchase_purchase_user_id_9ecb2dde_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.purchase_purchase DROP CONSTRAINT purchase_purchase_user_id_9ecb2dde_fk_auth_user_id;
       public          sali    false    3299    225    244            �      x������ � �      �      x������ � �      �     x�m�In�0E��)r�"�d�k(�XH8��En_��H��I�� ~*���;�Msh��!v��t����u[�r���[4	���6��# ���`ہ@e2���Oӽ�\jr�+-g@�S�I��{EC���.��6���r��G-�u�"$h'FH��LT *��`���
ؖ>�}�����u�q*y���4O��k��k��s��:�N|8k�LB��h�O~�ώ���Aװ!YO�Z�0�|f�.y&̤]0�K�ʺ@`�I��Xw�;��}f�ur!��� Dřp���x�f���;��$�3ƘI�`<^��D��ň�yh`nRMUA��� R@@����8O*m�f~c�Ƕ���ƃ��.6L�t Uu8��p ��I`�b<{�'u���/�/��.����_��K����e\E��}������≴�"�6��'W*&JM@�|������֗vb5���b��!
��ɵհ�P�Ӱ���! >S�l�����	��?޼�>��      �   U  x�m��n�`�5>�vF����ą�5�FŘ4��:����O_L�q�Y��|9(���*���w�\�(�����t�a����ivl��D���,���ı��)=��t>o�nRK�(Gf�����VSZ�H
��H$e�:�:�*���
�A%�ԠP��-[���<�=Ll�!� m�@�N��(� $?3��������=}������|�N���Z^%� a�����WH�wj��>Ձ(�ꔖR�Z�*�j�asqŪ��뻠K.'�7�阣;�9֗7�Z�����q+���q7�wv',��ԑW�ӈ��1T���\��=�JD�(�*����%u�T*�?N�~      �      x������ � �      �      x������ � �      �   �  x��ֽn�0�Y~
�S�:�}�ȣ��@�c�!��&�N;y�Ri$1"i��d����$�! �wI�"t�u�F��>w6��]?��׷�m�]w����M�\Q�3e����% D�����L��vӊU$��I���`,+������a�B u l��d�igŠxI�r���*��e��Y6N��V����Gs��: CH��z	�?�6c�1�qV��9E�	�wE�56q�-b����������o��~�w��xQ�(z���C�@T���3�� ��c�D=�ձC[h�^4ܼT1lbp�����!�hf���b8<���Đ��9�������b��Gȉ��"�j.h"hYP`;�����"$�p��f��"�܃�$B%��Pg�M�dSyދB4�dR%�j9ؓ�I��R���S`
�o�Y��V&��B*_e�,D�LP!����<ͤ
LSQH櫁��zb!���-���d[�c�px[�d����M��|57)C��`�Nɴ�����`��|����@y�/P
t�Bv��P .�㏿%�����)~�^�w�������l|X�q(n
ռt�%Q'�'�\��e�<NF���,�Ũh�^�T��}�jV����[R      �   �   x�]���0F��a�U�߻�V�M�6�^��kt6fWp� vX<�F�$+6`s� �,^��v7����!+	��N%��Hz��Җ֣�D	Cv	z�<��⫚m��VV��rИ��1h fq�U��>�-��캔��tg3�/���LX�      �   +  x����n�0���S�~��3��ͳ�dy��Z��T�ۯ�b��Tdo�8ߜ9�(���6ر ��v��4�GR�|#PqU�J
���Њ�f
��"��PIDsn]����ԢbꦿF����m�O���^��y#a�8`��������4�����1�]\�-=L��z��;��M���/4��Dm�`��o�8��f�n͗nlw�O��d�х6��b[�]rU�He[����T?����(@2��1���&\lqj�'A2�B&dP�����i�_��|��^��4�;����>����֎���0�4i&�ͤ�R(T΋e������x�YhW�O�k$)O�e&����Ճ�n�a�!�'Lv�u{�_�/�!Q,�dM��:�+J"#i�A�]L�+U���_H�a������h��
�D`��I�:�����'����89�9����LWoG�PaY<������Zk�[;�S�њ��Ƒ�8��1G�&���""����WDVT�/� ���S����̟fe�ϭ VD���R�V~���_��      �     x����r�@@������j�����D$"D���Xli�M�>I��y���!�\��Ӥ�����e=�Mui}�_��c�k�!Y��֭��[W��^O�_j�붛���Ү)�7&5�^[������ޢ��t�i�c@$�#�-��8���gڻ�ƒ�}�����h����ݴvSo_�bE fnh_��u����^*k��J�+�DV�J齣��ӐQ3{�5�d`�It��>�}!IL���� �9���HT�� ���AX�h�P�1���0N49��(Z?��7*i��:G�K8+ƧE��-�m4��Ay��Ÿ��o�����CI�x��U *!s"$W��eU��زn����K�+S:%�z{GZ;�-EKC7��ڒٵI��ko�%m�-^^t��$廦$��L��4��O��C9ė{�Td$sV|�/T�Ű;��ޗ"��x�&�8�.�i?��f	n2p�x�7���P��0�d��P�;��f_*{Y      �   �  x���I�GE��w�
� ��1�����n�K;�kUJ�^R�l���{-��ă!qXg�0�#|����_���� J�E�/j$��n�I@��s��&qC�O��T\ncO������
s_�}����Ϲ�Κa��$1�dx�ѣ����s��l����=8�L�б��q�?��R�qb��"�����w*� ;��\k����9��y���iQ�0~�����!���*��[P'�����-	s��/���F�"T[�hr!��<J�4(���ɼ�.��4;e�-�ReA���c��#����4�?�*�	�+J�ˏ��76���GS�@��KjW������4�o&�ƥ	�m0i�粂b��҄�S�����L'}��
���g��X���Jʾ����t�Z@ �1F��.�c� ����:���v�q�KF��0WF�r�an��?�7��j�0�&p��$�@����s�P����o��`�%�=Ve/-��:�nƥ}-])�I�r�=o�gЈ,RՆ,ܕ�+��B��$����3/��g꺥^�,[D�=KskU8,�{�?Y��Be6�YTT_䎄:�A�ő�/��`X+������[J���+�U����5^k�����Y�ؙ��'�W� �|v��'�k���2�.biU�\��V��f����j���?���aCɟ�������߳���      �   �  x�-�˕�6���`|T��\���핸��y&J�:��_���䷊K��ks�u���\�.g=.w��uV׷P}+ U� U�V�
`�+��^��
xuW«Y	��w��o%����:W��Z	�{%��+��Y	��*x=���[o�
o�*x;W�۵
�>��m�o�>x�[��jxg��w�jx箆wf5��Vû����YxW�û�6��kû{mx���޵��Y�}kÛomxk�m��^��^��u��Y��u�ͬo�:�޷���{��W��{����trSW�r�k��\s��U�����r��׳��z�|\g<�2����S/O�<�2����S/O�<��੗O�<x���S/�zy��˃�^<��੗������������������������xs;d�Y�D@V;�Od��0N��O���UP������"!��H��(�:����"!_&�R����"!+�HȪ)
�r����� +�(�**
������� ?�UUdeY]ECVXѐ���!��,���i�,4MCe�q2���Yh���B5���I35~6m�<�6d�N2����'�<�6d�P2���gԁ���@Vuq +�8��]�
/d�r�胬��@V|q ������B&���.d���B&���.d���B&��L~��2�d���7��o ��@&��L~��d�{���A&���d�{���A&���d�{��_~��_~��_~��_~��_~��d�d�d�d�d�Y�e@V~��_j�߄��G~�|䗚�G~�|䗚�G~�|䗚�G~�|䗚�G~���wd�	Y�eBV~���_&d�	Y�eAV~Y�yGd^���dA�k2�ɂ̋� �,ȼ*2�ʆ�˲!+�l��/��ˆ���!o����_6d�yÁ��rCV~�!+�ܐ/n��/7d���.��/7���/�CV~y +�<�/' ��/d����Y�偬��@V~y +�<��_^��w!�߅L~2�]��w!�߅L~2�]��w!��@&��L~��2�i'�iU�W:��o��o�VÊ<5����$��@��J�"+)4����4��t���߯yd����N����P��١T�C��g�b���Z�ʵ>;�3�
�>;Tl}v(���P�v(�
;Tm�ʶ�u[a�­��s^�ᓞ���N{a罴�_���/��ԗvp�K;8��j�Ҏýv��J;�ڡ���P�Uv��*;.'O;�r�����\e�r��C=W١���P��v(�j;�t���ڎ�|k����C]Wۡ���P��v(�j;�vm;wm;Twm;�wm;�wm;�h;Txm;�xm;�xi��:(��gV�h�Y���f�i��E3�J5+���jV�K5֬��;Tq;Tq];���A��*�vP񵃊�T|���k_;���A�c�T<vP��A�c�T<vP��A�c�T���g?;���A��*~v���*~vP񳃊�|�|v�%�����g_3�|�|v�E���7�g�*��Uܟ��?;Tq����U�a�*�Cwء�;����P�v��;Tq����U�i�*�Cwڡ�;�Pŝv��N;Tq���ӎ��z���'���丿Uz%/s�3��eεҽ̹V�[�s�N�9��s�O�9���s�P�9���s�Q��P��v��n;�Vm;�Zm;�^m;�鶃��v���vz��No;��m;��`��������v���v���N;��c;}�`�������>v���v���N;��k;}�`��������v���v���N_;��k�z�`Wǎ'�ء�Y�z����/(c��f=v�i���s9��r�z��ء�Y�ߞ����l��=;���g��9��h~W�CϜ~v���=s�١g����3gv虳?;���߯�O�_��կ��ʎͯvlxvlxv虳}��{�8��#����D��EK!��RL����?i���g����[���?k�� �Q�      �      x�3�t,(�I������� #
�      �   �   x�]�A
�0�ur��%����I�Cx�nT��Җ��1��E�30�a��8p4l>ƀ ��;�s��
$�H���X��tIۄ-���˴"[v��5����^����+(Č�����U�];P�e�#�*JH,�3
m�����/�>2�      �   >   x�-���0�0L��:�0����CwF�F ��ڜ,�tGZ��eN�����m�<$?��
K      �   +   x�3�4�422�03056�4�2�-����,8��b���� y�      �      x�3����K����� ��      �   &  x�m�Kn�HD��Sx?p��L�,����1A�t�E�� Pd0���������}Q\|��9��!�����?~}l�t�.WW�N�;�l��w�'����&��t��]�j�9�ރf��Vm�N�w4Ǣ}�(;',ՒH
�<�V_"'�;͓�9s�v�9J��i�����9J�Jk����$`�F�L='	�u�D�����e��)t���.�/�=��E�Y�K��!?*���J3�$/���s�ZtZnu�٢��|y��DΥ�L�N�[�ޕ��L�l�Y�ء���zGc�'�f�z"<hS���V��2i�HVXͧ�:i��0:{w��ҲHϛJ|��_�QȠ��Xw��{bC*�ޯ4TE��-�<���Zu��7qK��p�r��0�:����;�h�u�x��`�[����`���gw�xұ��Z7�?��Do�u��ZK��#`ȝ��p������V:j-O2[o��Q�-*�-����(����ǳ�(ko.�k{�=�>JЧΈ�����>JXw։b�i�u{�7ܘJ��������{��6�U��X����+y{��.��>�hg.کC,�u��4���k�n�JoiL^,�/�����H��U�L�/��f� tҨ$����Ik��3����m��3/��v2��Nt����15�4	����,�D��v늍^w\�U�����^7訓Q�{��oq�B�g��+6n?�$%�-���^
�	�J�w���F,�������K��ߏ��7N]����/y�nt�dr,�E���Zٻl�'��:�;�"o��4��e���gEG������V,�/����4�r��;=��QK��I�*_�ݝ��	x����F4q��X��'�3ܐ��ue�������C���G�
�]d����%Ĉ��8�7�Va����{��K��.J���ρ'���8�اԿ?i�*�ߠ�;F�����'�?U��m����4h\����Ei���G�X����yޟ�M� ^�x�!݌�r|x#yH�b�=�S���k�{A��w��N�%2�R�w}||�ń�{     