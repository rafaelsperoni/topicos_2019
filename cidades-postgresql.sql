--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

-- Started on 2019-03-07 19:34:45 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13041)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2948 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 16412)
-- Name: cidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cidade (
    id integer NOT NULL,
    nome character varying(120) DEFAULT NULL::character varying,
    estado integer
);


ALTER TABLE public.cidade OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16410)
-- Name: cidade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cidade_id_seq OWNER TO postgres;

--
-- TOC entry 2949 (class 0 OID 0)
-- Dependencies: 200
-- Name: cidade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cidade_id_seq OWNED BY public.cidade.id;


--
-- TOC entry 199 (class 1259 OID 16397)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    id integer NOT NULL,
    nome character varying(75) DEFAULT NULL::character varying,
    uf character varying(5) DEFAULT NULL::character varying,
    pais integer
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16395)
-- Name: estado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_id_seq OWNER TO postgres;

--
-- TOC entry 2950 (class 0 OID 0)
-- Dependencies: 198
-- Name: estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_id_seq OWNED BY public.estado.id;


--
-- TOC entry 197 (class 1259 OID 16387)
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pais (
    id integer NOT NULL,
    nome character varying(60) DEFAULT NULL::character varying,
    sigla character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public.pais OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16385)
-- Name: pais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pais_id_seq OWNER TO postgres;

--
-- TOC entry 2951 (class 0 OID 0)
-- Dependencies: 196
-- Name: pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pais_id_seq OWNED BY public.pais.id;


--
-- TOC entry 2804 (class 2604 OID 16415)
-- Name: cidade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade ALTER COLUMN id SET DEFAULT nextval('public.cidade_id_seq'::regclass);


--
-- TOC entry 2801 (class 2604 OID 16400)
-- Name: estado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public.estado_id_seq'::regclass);


--
-- TOC entry 2798 (class 2604 OID 16390)
-- Name: pais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais ALTER COLUMN id SET DEFAULT nextval('public.pais_id_seq'::regclass);


--
-- TOC entry 2940 (class 0 OID 16412)
-- Dependencies: 201
-- Data for Name: cidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cidade (id, nome, estado) FROM stdin;
2027	Maripá de Minas	11
2028	Marliéria	11
2029	Marmelópolis	11
2030	Martinho Campos	11
2031	Martins Soares	11
2032	Mata Verde	11
2033	Materlândia	11
2034	Mateus Leme	11
2035	Mathias Lobato	11
2036	Matias Barbosa	11
2037	Matias Cardoso	11
2038	Matipó	11
2039	Mato Verde	11
2040	Matozinhos	11
2041	Matutina	11
2042	Medeiros	11
2043	Medina	11
2044	Mendes Pimentel	11
2045	Mercês	11
2046	Mesquita	11
2047	Minas Novas	11
2048	Minduri	11
2049	Mirabela	11
2050	Miradouro	11
2051	Miraí	11
2052	Miravânia	11
2053	Moeda	11
2054	Moema	11
2055	Monjolos	11
2056	Monsenhor Paulo	11
2057	Montalvânia	11
2058	Monte Alegre de Minas	11
2059	Monte Azul	11
2060	Monte Belo	11
2061	Monte Carmelo	11
2062	Monte Formoso	11
2063	Monte Santo de Minas	11
2064	Monte Sião	11
2065	Montes Claros	11
2066	Montezuma	11
2067	Morada Nova de Minas	11
2068	Morro da Garça	11
2069	Morro do Pilar	11
2070	Munhoz	11
2071	Muriaé	11
2072	Mutum	11
2073	Muzambinho	11
2074	Nacip Raydan	11
2075	Nanuque	11
2076	Naque	11
2077	Natalândia	11
2078	Natércia	11
2079	Nazareno	11
2080	Nepomuceno	11
2081	Ninheira	11
2082	Nova Belém	11
2083	Nova Era	11
2084	Nova Lima	11
2085	Nova Módica	11
2086	Nova Ponte	11
2087	Nova Porteirinha	11
2088	Nova Resende	11
2089	Nova Serrana	11
2090	Nova União	11
2091	Novo Cruzeiro	11
2092	Novo Oriente de Minas	11
2093	Novorizonte	11
2094	Olaria	11
2095	Olhos-dÁgua	11
2096	Olímpio Noronha	11
2097	Oliveira	11
2098	Oliveira Fortes	11
2099	Onça de Pitangui	11
2100	Oratórios	11
2101	Orizânia	11
2102	Ouro Branco	11
2103	Ouro Fino	11
2104	Ouro Preto	11
2105	Ouro Verde de Minas	11
2106	Padre Carvalho	11
2107	Padre Paraíso	11
2108	Pai Pedro	11
2109	Paineiras	11
2110	Pains	11
2111	Paiva	11
2112	Palma	11
2113	Palmópolis	11
2114	Papagaios	11
2115	Pará de Minas	11
2116	Paracatu	11
2117	Paraguaçu	11
2118	Paraisópolis	11
2119	Paraopeba	11
2120	Passa Quatro	11
2121	Passa Tempo	11
2122	Passabém	11
2123	Passa-Vinte	11
2124	Passos	11
2125	Patis	11
2126	Patos de Minas	11
2127	Patrocínio	11
2128	Patrocínio do Muriaé	11
2129	Paula Cândido	11
2130	Paulistas	11
2131	Pavão	11
2132	Peçanha	11
2133	Pedra Azul	11
2134	Pedra Bonita	11
2135	Pedra do Anta	11
2136	Pedra do Indaiá	11
2137	Pedra Dourada	11
2138	Pedralva	11
2139	Pedras de Maria da Cruz	11
2140	Pedrinópolis	11
2141	Pedro Leopoldo	11
2142	Pedro Teixeira	11
2143	Pequeri	11
2144	Pequi	11
2145	Perdigão	11
2146	Perdizes	11
2147	Perdões	11
2148	Periquito	11
2149	Pescador	11
2150	Piau	11
2151	Piedade de Caratinga	11
2152	Piedade de Ponte Nova	11
2153	Piedade do Rio Grande	11
2154	Piedade dos Gerais	11
2155	Pimenta	11
2156	Pingo-dÁgua	11
2157	Pintópolis	11
2158	Piracema	11
2159	Pirajuba	11
2160	Piranga	11
2161	Piranguçu	11
2162	Piranguinho	11
2163	Pirapetinga	11
2164	Pirapora	11
2165	Piraúba	11
2166	Pitangui	11
2167	Piumhi	11
2168	Planura	11
2169	Poço Fundo	11
2170	Poços de Caldas	11
2171	Pocrane	11
2172	Pompéu	11
2173	Ponte Nova	11
2174	Ponto Chique	11
2175	Ponto dos Volantes	11
2176	Porteirinha	11
2177	Porto Firme	11
2178	Poté	11
2179	Pouso Alegre	11
2180	Pouso Alto	11
2181	Prados	11
2182	Prata	11
2183	Pratápolis	11
2184	Pratinha	11
2185	Presidente Bernardes	11
2186	Presidente Juscelino	11
2187	Presidente Kubitschek	11
2188	Presidente Olegário	11
2189	Prudente de Morais	11
2190	Quartel Geral	11
2191	Queluzito	11
2192	Raposos	11
2193	Raul Soares	11
2194	Recreio	11
2195	Reduto	11
2196	Resende Costa	11
2197	Resplendor	11
2198	Ressaquinha	11
2199	Riachinho	11
2200	Riacho dos Machados	11
2201	Ribeirão das Neves	11
2202	Ribeirão Vermelho	11
2203	Rio Acima	11
2204	Rio Casca	11
2205	Rio do Prado	11
2206	Rio Doce	11
2207	Rio Espera	11
2208	Rio Manso	11
2209	Rio Novo	11
2210	Rio Paranaíba	11
2211	Rio Pardo de Minas	11
2212	Rio Piracicaba	11
2213	Rio Pomba	11
2214	Rio Preto	11
2215	Rio Vermelho	11
2216	Ritápolis	11
2217	Rochedo de Minas	11
2218	Rodeiro	11
2219	Romaria	11
2220	Rosário da Limeira	11
2221	Rubelita	11
2222	Rubim	11
2223	Sabará	11
2224	Sabinópolis	11
2225	Sacramento	11
2226	Salinas	11
2227	Salto da Divisa	11
2228	Santa Bárbara	11
2229	Santa Bárbara do Leste	11
2230	Santa Bárbara do Monte Verde	11
2231	Santa Bárbara do Tugúrio	11
2232	Santa Cruz de Minas	11
2233	Santa Cruz de Salinas	11
2234	Santa Cruz do Escalvado	11
2235	Santa Efigênia de Minas	11
2236	Santa Fé de Minas	11
2237	Santa Helena de Minas	11
2238	Santa Juliana	11
2239	Santa Luzia	11
2240	Santa Margarida	11
2241	Santa Maria de Itabira	11
2242	Santa Maria do Salto	11
2243	Santa Maria do Suaçuí	11
2244	Santa Rita de Caldas	11
2245	Santa Rita de Ibitipoca	11
2246	Santa Rita de Jacutinga	11
2247	Santa Rita de Minas	11
2248	Santa Rita do Itueto	11
2249	Santa Rita do Sapucaí	11
2250	Santa Rosa da Serra	11
2251	Santa Vitória	11
2252	Santana da Vargem	11
2253	Santana de Cataguases	11
2254	Santana de Pirapama	11
2255	Santana do Deserto	11
2256	Santana do Garambéu	11
2257	Santana do Jacaré	11
2258	Santana do Manhuaçu	11
2259	Santana do Paraíso	11
2260	Santana do Riacho	11
2261	Santana dos Montes	11
2262	Santo Antônio do Amparo	11
2263	Santo Antônio do Aventureiro	11
2264	Santo Antônio do Grama	11
2265	Santo Antônio do Itambé	11
2266	Santo Antônio do Jacinto	11
2267	Santo Antônio do Monte	11
2268	Santo Antônio do Retiro	11
2269	Santo Antônio do Rio Abaixo	11
2270	Santo Hipólito	11
2271	Santos Dumont	11
2272	São Bento Abade	11
2273	São Brás do Suaçuí	11
2274	São Domingos das Dores	11
2275	São Domingos do Prata	11
2276	São Félix de Minas	11
2277	São Francisco	11
2278	São Francisco de Paula	11
2279	São Francisco de Sales	11
2280	São Francisco do Glória	11
2281	São Geraldo	11
2282	São Geraldo da Piedade	11
2283	São Geraldo do Baixio	11
2284	São Gonçalo do Abaeté	11
2285	São Gonçalo do Pará	11
2286	São Gonçalo do Rio Abaixo	11
2287	São Gonçalo do Rio Preto	11
2288	São Gonçalo do Sapucaí	11
2289	São Gotardo	11
2290	São João Batista do Glória	11
2291	São João da Lagoa	11
2292	São João da Mata	11
2293	São João da Ponte	11
2294	São João das Missões	11
2295	São João del Rei	11
2296	São João do Manhuaçu	11
2297	São João do Manteninha	11
2298	São João do Oriente	11
2299	São João do Pacuí	11
2300	São João do Paraíso	11
2301	São João Evangelista	11
2302	São João Nepomuceno	11
2303	São Joaquim de Bicas	11
2304	São José da Barra	11
2305	São José da Lapa	11
2306	São José da Safira	11
2307	São José da Varginha	11
2308	São José do Alegre	11
2309	São José do Divino	11
2310	São José do Goiabal	11
2311	São José do Jacuri	11
2312	São José do Mantimento	11
2313	São Lourenço	11
2314	São Miguel do Anta	11
2315	São Pedro da União	11
2316	São Pedro do Suaçuí	11
2317	São Pedro dos Ferros	11
2318	São Romão	11
2319	São Roque de Minas	11
2320	São Sebastião da Bela Vista	11
2321	São Sebastião da Vargem Alegre	11
2322	São Sebastião do Anta	11
2323	São Sebastião do Maranhão	11
2324	São Sebastião do Oeste	11
2325	São Sebastião do Paraíso	11
2326	São Sebastião do Rio Preto	11
2327	São Sebastião do Rio Verde	11
2328	São Thomé das Letras	11
2329	São Tiago	11
2330	São Tomás de Aquino	11
2331	São Vicente de Minas	11
2332	Sapucaí-Mirim	11
2333	Sardoá	11
2334	Sarzedo	11
2335	Sem-Peixe	11
2336	Senador Amaral	11
2337	Senador Cortes	11
2338	Senador Firmino	11
2339	Senador José Bento	11
2340	Senador Modestino Gonçalves	11
2341	Senhora de Oliveira	11
2342	Senhora do Porto	11
2343	Senhora dos Remédios	11
2344	Sericita	11
2345	Seritinga	11
2346	Serra Azul de Minas	11
2347	Serra da Saudade	11
2348	Serra do Salitre	11
2349	Serra dos Aimorés	11
2350	Serrania	11
2351	Serranópolis de Minas	11
2352	Serranos	11
2353	Serro	11
2354	Sete Lagoas	11
2355	Setubinha	11
2356	Silveirânia	11
2357	Silvianópolis	11
2358	Simão Pereira	11
2359	Simonésia	11
2360	Sobrália	11
2361	Soledade de Minas	11
2362	Tabuleiro	11
2363	Taiobeiras	11
2364	Taparuba	11
2365	Tapira	11
2366	Tapiraí	11
2367	Taquaraçu de Minas	11
2368	Tarumirim	11
2369	Teixeiras	11
2370	Teófilo Otoni	11
2371	Timóteo	11
2372	Tiradentes	11
2373	Tiros	11
2374	Tocantins	11
2375	Tocos do Moji	11
2376	Toledo	11
2377	Tombos	11
2378	Três Corações	11
2379	Três Marias	11
2380	Três Pontas	11
2381	Tumiritinga	11
2382	Tupaciguara	11
2383	Turmalina	11
2384	Turvolândia	11
2385	Ubá	11
2386	Ubaí	11
2387	Ubaporanga	11
2388	Uberaba	11
2389	Uberlândia	11
2390	Umburatiba	11
2391	Unaí	11
2392	União de Minas	11
2393	Uruana de Minas	11
2394	Urucânia	11
2395	Urucuia	11
2396	Vargem Alegre	11
2397	Vargem Bonita	11
2398	Vargem Grande do Rio Pardo	11
2399	Varginha	11
2400	Varjão de Minas	11
2401	Várzea da Palma	11
2402	Varzelândia	11
2403	Vazante	11
2404	Verdelândia	11
2405	Veredinha	11
2406	Veríssimo	11
2407	Vermelho Novo	11
2408	Vespasiano	11
2409	Viçosa	11
2410	Vieiras	11
2411	Virgem da Lapa	11
2412	Virgínia	11
2413	Virginópolis	11
2414	Virgolândia	11
2415	Visconde do Rio Branco	11
2416	Volta Grande	11
2417	Wenceslau Braz	11
2418	Abaetetuba	14
2419	Abel Figueiredo	14
2420	Acará	14
2421	Afuá	14
2422	Água Azul do Norte	14
2423	Alenquer	14
2424	Almeirim	14
2425	Altamira	14
2426	Anajás	14
2427	Ananindeua	14
2428	Anapu	14
2429	Augusto Corrêa	14
2430	Aurora do Pará	14
2431	Aveiro	14
2432	Bagre	14
2433	Baião	14
2434	Bannach	14
2435	Barcarena	14
2436	Belém	14
2437	Belterra	14
2438	Benevides	14
2439	Bom Jesus do Tocantins	14
2440	Bonito	14
2441	Bragança	14
2442	Brasil Novo	14
2443	Brejo Grande do Araguaia	14
2444	Breu Branco	14
2445	Breves	14
2446	Bujaru	14
2447	Cachoeira do Arari	14
2448	Cachoeira do Piriá	14
2449	Cametá	14
2450	Canaã dos Carajás	14
2451	Capanema	14
2452	Capitão Poço	14
2453	Castanhal	14
2454	Chaves	14
2455	Colares	14
2456	Conceição do Araguaia	14
2457	Concórdia do Pará	14
2458	Cumaru do Norte	14
2459	Curionópolis	14
2460	Curralinho	14
2461	Curuá	14
2462	Curuçá	14
2463	Dom Eliseu	14
2464	Eldorado dos Carajás	14
2465	Faro	14
2466	Floresta do Araguaia	14
2467	Garrafão do Norte	14
2468	Goianésia do Pará	14
2469	Gurupá	14
2470	Igarapé-Açu	14
2471	Igarapé-Miri	14
2472	Inhangapi	14
2473	Ipixuna do Pará	14
2474	Irituia	14
2475	Itaituba	14
2476	Itupiranga	14
2477	Jacareacanga	14
2478	Jacundá	14
2479	Juruti	14
2480	Limoeiro do Ajuru	14
2481	Mãe do Rio	14
2482	Magalhães Barata	14
2483	Marabá	14
2484	Maracanã	14
2485	Marapanim	14
2486	Marituba	14
2487	Medicilândia	14
2488	Melgaço	14
2489	Mocajuba	14
2490	Moju	14
2491	Monte Alegre	14
2492	Muaná	14
2493	Nova Esperança do Piriá	14
2494	Nova Ipixuna	14
2495	Nova Timboteua	14
2496	Novo Progresso	14
2497	Novo Repartimento	14
2498	Óbidos	14
2499	Oeiras do Pará	14
2500	Oriximiná	14
2501	Ourém	14
2502	Ourilândia do Norte	14
2503	Pacajá	14
2504	Palestina do Pará	14
2505	Paragominas	14
2506	Parauapebas	14
2507	Pau dArco	14
2508	Peixe-Boi	14
2509	Piçarra	14
2510	Placas	14
2511	Ponta de Pedras	14
2512	Portel	14
2513	Porto de Moz	14
2514	Prainha	14
2515	Primavera	14
2516	Quatipuru	14
2517	Redenção	14
2518	Rio Maria	14
2519	Rondon do Pará	14
2520	Rurópolis	14
2521	Salinópolis	14
2522	Salvaterra	14
2523	Santa Bárbara do Pará	14
2524	Santa Cruz do Arari	14
2525	Santa Isabel do Pará	14
2526	Santa Luzia do Pará	14
2527	Santa Maria das Barreiras	14
2528	Santa Maria do Pará	14
2529	Santana do Araguaia	14
2530	Santarém	14
2531	Santarém Novo	14
2532	Santo Antônio do Tauá	14
2533	São Caetano de Odivelas	14
2534	São Domingos do Araguaia	14
2535	São Domingos do Capim	14
2536	São Félix do Xingu	14
2537	São Francisco do Pará	14
2538	São Geraldo do Araguaia	14
2539	São João da Ponta	14
2540	São João de Pirabas	14
2541	São João do Araguaia	14
2542	São Miguel do Guamá	14
2543	São Sebastião da Boa Vista	14
2544	Sapucaia	14
2545	Senador José Porfírio	14
2546	Soure	14
2547	Tailândia	14
2548	Terra Alta	14
2549	Terra Santa	14
2550	Tomé-Açu	14
2551	Tracuateua	14
2552	Trairão	14
2553	Tucumã	14
2554	Tucuruí	14
2555	Ulianópolis	14
2556	Uruará	14
2557	Vigia	14
2558	Viseu	14
2559	Vitória do Xingu	14
2560	Xinguara	14
2561	Água Branca	15
2562	Aguiar	15
2563	Alagoa Grande	15
2564	Alagoa Nova	15
2565	Alagoinha	15
2566	Alcantil	15
2567	Algodão de Jandaíra	15
2568	Alhandra	15
2569	Amparo	15
2570	Aparecida	15
2571	Araçagi	15
2572	Arara	15
2573	Araruna	15
2574	Areia	15
2575	Areia de Baraúnas	15
2576	Areial	15
2577	Aroeiras	15
2578	Assunção	15
2579	Baía da Traição	15
2580	Bananeiras	15
2581	Baraúna	15
2582	Barra de Santa Rosa	15
2583	Barra de Santana	15
2584	Barra de São Miguel	15
2585	Bayeux	15
2586	Belém	15
2587	Belém do Brejo do Cruz	15
2588	Bernardino Batista	15
2589	Boa Ventura	15
2590	Boa Vista	15
2591	Bom Jesus	15
2592	Bom Sucesso	15
2593	Bonito de Santa Fé	15
2594	Boqueirão	15
2595	Borborema	15
2596	Brejo do Cruz	15
2597	Brejo dos Santos	15
2598	Caaporã	15
2599	Cabaceiras	15
2600	Cabedelo	15
2601	Cachoeira dos Índios	15
2602	Cacimba de Areia	15
2603	Cacimba de Dentro	15
2604	Cacimbas	15
2605	Caiçara	15
2606	Cajazeiras	15
2607	Cajazeirinhas	15
2608	Caldas Brandão	15
2609	Camalaú	15
2610	Campina Grande	15
2611	Campo de Santana	15
2612	Capim	15
2613	Caraúbas	15
2614	Carrapateira	15
2615	Casserengue	15
2616	Catingueira	15
2617	Catolé do Rocha	15
2618	Caturité	15
2619	Conceição	15
2620	Condado	15
2621	Conde	15
2622	Congo	15
2623	Coremas	15
2624	Coxixola	15
2625	Cruz do Espírito Santo	15
2626	Cubati	15
2627	Cuité	15
2628	Cuité de Mamanguape	15
2629	Cuitegi	15
2630	Curral de Cima	15
2631	Curral Velho	15
2632	Damião	15
2633	Desterro	15
2634	Diamante	15
2635	Dona Inês	15
2636	Duas Estradas	15
2637	Emas	15
2638	Esperança	15
2639	Fagundes	15
2640	Frei Martinho	15
2641	Gado Bravo	15
2642	Guarabira	15
2643	Gurinhém	15
2644	Gurjão	15
2645	Ibiara	15
2646	Igaracy	15
2647	Imaculada	15
2648	Ingá	15
2649	Itabaiana	15
2650	Itaporanga	15
2651	Itapororoca	15
2652	Itatuba	15
2653	Jacaraú	15
2654	Jericó	15
2655	João Pessoa	15
2656	Juarez Távora	15
2657	Juazeirinho	15
2658	Junco do Seridó	15
2659	Juripiranga	15
2660	Juru	15
2661	Lagoa	15
2662	Lagoa de Dentro	15
2663	Lagoa Seca	15
2664	Lastro	15
2665	Livramento	15
2666	Logradouro	15
2667	Lucena	15
2668	Mãe dÁgua	15
2669	Malta	15
2670	Mamanguape	15
2671	Manaíra	15
2672	Marcação	15
2673	Mari	15
2674	Marizópolis	15
2675	Massaranduba	15
2676	Mataraca	15
2677	Matinhas	15
2678	Mato Grosso	15
2679	Maturéia	15
2680	Mogeiro	15
2681	Montadas	15
2682	Monte Horebe	15
2683	Monteiro	15
2684	Mulungu	15
2685	Natuba	15
2686	Nazarezinho	15
2687	Nova Floresta	15
2688	Nova Olinda	15
2689	Nova Palmeira	15
2690	Olho dÁgua	15
2691	Olivedos	15
2692	Ouro Velho	15
2693	Parari	15
2694	Passagem	15
2695	Patos	15
2696	Paulista	15
2697	Pedra Branca	15
2698	Pedra Lavrada	15
2699	Pedras de Fogo	15
2700	Pedro Régis	15
2701	Piancó	15
2702	Picuí	15
2703	Pilar	15
2704	Pilões	15
2705	Pilõezinhos	15
2706	Pirpirituba	15
2707	Pitimbu	15
2708	Pocinhos	15
2709	Poço Dantas	15
2710	Poço de José de Moura	15
2711	Pombal	15
2712	Prata	15
2713	Princesa Isabel	15
2714	Puxinanã	15
2715	Queimadas	15
2716	Quixabá	15
2717	Remígio	15
2718	Riachão	15
2719	Riachão do Bacamarte	15
2720	Riachão do Poço	15
2721	Riacho de Santo Antônio	15
2722	Riacho dos Cavalos	15
2723	Rio Tinto	15
2724	Salgadinho	15
2725	Salgado de São Félix	15
2726	Santa Cecília	15
2727	Santa Cruz	15
2728	Santa Helena	15
2729	Santa Inês	15
2730	Santa Luzia	15
2731	Santa Rita	15
2732	Santa Teresinha	15
2733	Santana de Mangueira	15
2734	Santana dos Garrotes	15
2735	Santarém	15
2736	Santo André	15
2737	São Bentinho	15
2738	São Bento	15
2739	São Domingos de Pombal	15
2740	São Domingos do Cariri	15
2741	São Francisco	15
2742	São João do Cariri	15
2743	São João do Rio do Peixe	15
2744	São João do Tigre	15
2745	São José da Lagoa Tapada	15
2746	São José de Caiana	15
2747	São José de Espinharas	15
2748	São José de Piranhas	15
2749	São José de Princesa	15
2750	São José do Bonfim	15
2751	São José do Brejo do Cruz	15
2752	São José do Sabugi	15
2753	São José dos Cordeiros	15
2754	São José dos Ramos	15
2755	São Mamede	15
2756	São Miguel de Taipu	15
2757	São Sebastião de Lagoa de Roça	15
2758	São Sebastião do Umbuzeiro	15
2759	Sapé	15
2760	Seridó	15
2761	Serra Branca	15
2762	Serra da Raiz	15
2763	Serra Grande	15
2764	Serra Redonda	15
2765	Serraria	15
2766	Sertãozinho	15
2767	Sobrado	15
2768	Solânea	15
2769	Soledade	15
2770	Sossêgo	15
2771	Sousa	15
2772	Sumé	15
2773	Taperoá	15
2774	Tavares	15
2775	Teixeira	15
2776	Tenório	15
2777	Triunfo	15
2778	Uiraúna	15
2779	Umbuzeiro	15
2780	Várzea	15
2781	Vieirópolis	15
2782	Vista Serrana	15
2783	Zabelê	15
2784	Abatiá	18
2785	Adrianópolis	18
2786	Agudos do Sul	18
2787	Almirante Tamandaré	18
2788	Altamira do Paraná	18
2789	Alto Paraíso	18
2790	Alto Paraná	18
2791	Alto Piquiri	18
2792	Altônia	18
2793	Alvorada do Sul	18
2794	Amaporã	18
2795	Ampére	18
2796	Anahy	18
2797	Andirá	18
2798	Ângulo	18
2799	Antonina	18
2800	Antônio Olinto	18
2801	Apucarana	18
2802	Arapongas	18
2803	Arapoti	18
2804	Arapuã	18
2805	Araruna	18
2806	Araucária	18
2807	Ariranha do Ivaí	18
2808	Assaí	18
2809	Assis Chateaubriand	18
2810	Astorga	18
2811	Atalaia	18
2812	Balsa Nova	18
2813	Bandeirantes	18
2814	Barbosa Ferraz	18
2815	Barra do Jacaré	18
2816	Barracão	18
2817	Bela Vista da Caroba	18
2818	Bela Vista do Paraíso	18
2819	Bituruna	18
2820	Boa Esperança	18
2821	Boa Esperança do Iguaçu	18
2822	Boa Ventura de São Roque	18
2823	Boa Vista da Aparecida	18
2824	Bocaiúva do Sul	18
2825	Bom Jesus do Sul	18
2826	Bom Sucesso	18
2827	Bom Sucesso do Sul	18
2828	Borrazópolis	18
2829	Braganey	18
2830	Brasilândia do Sul	18
2831	Cafeara	18
2832	Cafelândia	18
2833	Cafezal do Sul	18
2834	Califórnia	18
2835	Cambará	18
2836	Cambé	18
2837	Cambira	18
2838	Campina da Lagoa	18
2839	Campina do Simão	18
2840	Campina Grande do Sul	18
2841	Campo Bonito	18
2842	Campo do Tenente	18
2843	Campo Largo	18
2844	Campo Magro	18
2845	Campo Mourão	18
2846	Cândido de Abreu	18
2847	Candói	18
2848	Cantagalo	18
2849	Capanema	18
2850	Capitão Leônidas Marques	18
2851	Carambeí	18
2852	Carlópolis	18
2853	Cascavel	18
2854	Castro	18
2855	Catanduvas	18
2856	Centenário do Sul	18
2857	Cerro Azul	18
2858	Céu Azul	18
2859	Chopinzinho	18
2860	Cianorte	18
2861	Cidade Gaúcha	18
2862	Clevelândia	18
2863	Colombo	18
2864	Colorado	18
2865	Congonhinhas	18
2866	Conselheiro Mairinck	18
2867	Contenda	18
2868	Corbélia	18
2869	Cornélio Procópio	18
2870	Coronel Domingos Soares	18
2871	Coronel Vivida	18
2872	Corumbataí do Sul	18
2873	Cruz Machado	18
2874	Cruzeiro do Iguaçu	18
2875	Cruzeiro do Oeste	18
2876	Cruzeiro do Sul	18
2877	Cruzmaltina	18
2878	Curitiba	18
2879	Curiúva	18
2880	Diamante dOeste	18
2881	Diamante do Norte	18
2882	Diamante do Sul	18
2883	Dois Vizinhos	18
2884	Douradina	18
2885	Doutor Camargo	18
2886	Doutor Ulysses	18
2887	Enéas Marques	18
2888	Engenheiro Beltrão	18
2889	Entre Rios do Oeste	18
2890	Esperança Nova	18
2891	Espigão Alto do Iguaçu	18
2892	Farol	18
2893	Faxinal	18
2894	Fazenda Rio Grande	18
2895	Fênix	18
2896	Fernandes Pinheiro	18
2897	Figueira	18
2898	Flor da Serra do Sul	18
2899	Floraí	18
2900	Floresta	18
2901	Florestópolis	18
2902	Flórida	18
2903	Formosa do Oeste	18
2904	Foz do Iguaçu	18
2905	Foz do Jordão	18
2906	Francisco Alves	18
2907	Francisco Beltrão	18
2908	General Carneiro	18
2909	Godoy Moreira	18
2910	Goioerê	18
2911	Goioxim	18
2912	Grandes Rios	18
2913	Guaíra	18
2914	Guairaçá	18
2915	Guamiranga	18
2916	Guapirama	18
2917	Guaporema	18
2918	Guaraci	18
2919	Guaraniaçu	18
2920	Guarapuava	18
2921	Guaraqueçaba	18
2922	Guaratuba	18
2923	Honório Serpa	18
2924	Ibaiti	18
2925	Ibema	18
2926	Ibiporã	18
2927	Icaraíma	18
2928	Iguaraçu	18
2929	Iguatu	18
2930	Imbaú	18
2931	Imbituva	18
2932	Inácio Martins	18
2933	Inajá	18
2934	Indianópolis	18
2935	Ipiranga	18
2936	Iporã	18
2937	Iracema do Oeste	18
2938	Irati	18
2939	Iretama	18
2940	Itaguajé	18
2941	Itaipulândia	18
2942	Itambaracá	18
2943	Itambé	18
2944	Itapejara dOeste	18
2945	Itaperuçu	18
2946	Itaúna do Sul	18
2947	Ivaí	18
2948	Ivaiporã	18
2949	Ivaté	18
2950	Ivatuba	18
2951	Jaboti	18
2952	Jacarezinho	18
2953	Jaguapitã	18
2954	Jaguariaíva	18
2955	Jandaia do Sul	18
2956	Janiópolis	18
2957	Japira	18
2958	Japurá	18
2959	Jardim Alegre	18
2960	Jardim Olinda	18
2961	Jataizinho	18
2962	Jesuítas	18
2963	Joaquim Távora	18
2964	Jundiaí do Sul	18
2965	Juranda	18
2966	Jussara	18
2967	Kaloré	18
2968	Lapa	18
2969	Laranjal	18
2970	Laranjeiras do Sul	18
2971	Leópolis	18
2972	Lidianópolis	18
2973	Lindoeste	18
2974	Loanda	18
2975	Lobato	18
2976	Londrina	18
2977	Luiziana	18
2978	Lunardelli	18
2979	Lupionópolis	18
2980	Mallet	18
2981	Mamborê	18
2982	Mandaguaçu	18
2983	Mandaguari	18
2984	Mandirituba	18
2985	Manfrinópolis	18
2986	Mangueirinha	18
2987	Manoel Ribas	18
2988	Marechal Cândido Rondon	18
2989	Maria Helena	18
2990	Marialva	18
2991	Marilândia do Sul	18
2992	Marilena	18
2993	Mariluz	18
2994	Maringá	18
2995	Mariópolis	18
2996	Maripá	18
2997	Marmeleiro	18
2998	Marquinho	18
2999	Marumbi	18
3000	Matelândia	18
3001	Matinhos	18
3002	Mato Rico	18
3003	Mauá da Serra	18
3004	Medianeira	18
3005	Mercedes	18
3006	Mirador	18
3007	Miraselva	18
3008	Missal	18
3009	Moreira Sales	18
3010	Morretes	18
3011	Munhoz de Melo	18
3012	Nossa Senhora das Graças	18
3013	Nova Aliança do Ivaí	18
3014	Nova América da Colina	18
3015	Nova Aurora	18
3016	Nova Cantu	18
3017	Nova Esperança	18
3018	Nova Esperança do Sudoeste	18
3019	Nova Fátima	18
3020	Nova Laranjeiras	18
3021	Nova Londrina	18
3022	Nova Olímpia	18
3023	Nova Prata do Iguaçu	18
3024	Nova Santa Bárbara	18
3025	Nova Santa Rosa	18
3026	Nova Tebas	18
3027	Novo Itacolomi	18
3028	Ortigueira	18
3029	Ourizona	18
3030	Ouro Verde do Oeste	18
3031	Paiçandu	18
3032	Palmas	18
3033	Palmeira	18
3034	Palmital	18
3035	Palotina	18
3036	Paraíso do Norte	18
3037	Paranacity	18
3038	Paranaguá	18
3039	Paranapoema	18
3040	Paranavaí	18
3041	Pato Bragado	18
3042	Pato Branco	18
3043	Paula Freitas	18
3044	Paulo Frontin	18
3045	Peabiru	18
3046	Perobal	18
3047	Pérola	18
3048	Pérola dOeste	18
3049	Piên	18
3050	Pinhais	18
3051	Pinhal de São Bento	18
3052	Pinhalão	18
3053	Pinhão	18
3054	Piraí do Sul	18
3055	Piraquara	18
3056	Pitanga	18
3057	Pitangueiras	18
3058	Planaltina do Paraná	18
3059	Planalto	18
3060	Ponta Grossa	18
3061	Pontal do Paraná	18
3062	Porecatu	18
3063	Porto Amazonas	18
3064	Porto Barreiro	18
3065	Porto Rico	18
3066	Porto Vitória	18
3067	Prado Ferreira	18
3068	Pranchita	18
3069	Presidente Castelo Branco	18
3070	Primeiro de Maio	18
3071	Prudentópolis	18
3072	Quarto Centenário	18
3073	Quatiguá	18
3074	Quatro Barras	18
3075	Quatro Pontes	18
3076	Quedas do Iguaçu	18
3077	Querência do Norte	18
3078	Quinta do Sol	18
3079	Quitandinha	18
3080	Ramilândia	18
3081	Rancho Alegre	18
3082	Rancho Alegre dOeste	18
3083	Realeza	18
3084	Rebouças	18
3085	Renascença	18
3086	Reserva	18
3087	Reserva do Iguaçu	18
3088	Ribeirão Claro	18
3089	Ribeirão do Pinhal	18
3090	Rio Azul	18
3091	Rio Bom	18
3092	Rio Bonito do Iguaçu	18
3093	Rio Branco do Ivaí	18
3094	Rio Branco do Sul	18
3095	Rio Negro	18
3096	Rolândia	18
3097	Roncador	18
3098	Rondon	18
3099	Rosário do Ivaí	18
3100	Sabáudia	18
3101	Salgado Filho	18
3102	Salto do Itararé	18
3103	Salto do Lontra	18
3104	Santa Amélia	18
3105	Santa Cecília do Pavão	18
3106	Santa Cruz de Monte Castelo	18
3107	Santa Fé	18
3108	Santa Helena	18
3109	Santa Inês	18
3110	Santa Isabel do Ivaí	18
3111	Santa Izabel do Oeste	18
3112	Santa Lúcia	18
3113	Santa Maria do Oeste	18
3114	Santa Mariana	18
3115	Santa Mônica	18
3116	Santa Tereza do Oeste	18
3117	Santa Terezinha de Itaipu	18
3118	Santana do Itararé	18
3119	Santo Antônio da Platina	18
3120	Santo Antônio do Caiuá	18
3121	Santo Antônio do Paraíso	18
3122	Santo Antônio do Sudoeste	18
3123	Santo Inácio	18
3124	São Carlos do Ivaí	18
3125	São Jerônimo da Serra	18
3126	São João	18
3127	São João do Caiuá	18
3128	São João do Ivaí	18
3129	São João do Triunfo	18
3130	São Jorge dOeste	18
3131	São Jorge do Ivaí	18
3132	São Jorge do Patrocínio	18
3133	São José da Boa Vista	18
3134	São José das Palmeiras	18
3135	São José dos Pinhais	18
3136	São Manoel do Paraná	18
3137	São Mateus do Sul	18
3138	São Miguel do Iguaçu	18
3139	São Pedro do Iguaçu	18
3140	São Pedro do Ivaí	18
3141	São Pedro do Paraná	18
3142	São Sebastião da Amoreira	18
3143	São Tomé	18
3144	Sapopema	18
3145	Sarandi	18
3146	Saudade do Iguaçu	18
3147	Sengés	18
3148	Serranópolis do Iguaçu	18
3149	Sertaneja	18
3150	Sertanópolis	18
3151	Siqueira Campos	18
3152	Sulina	18
3153	Tamarana	18
3154	Tamboara	18
3155	Tapejara	18
3156	Tapira	18
3157	Teixeira Soares	18
3158	Telêmaco Borba	18
3159	Terra Boa	18
3160	Terra Rica	18
3161	Terra Roxa	18
3162	Tibagi	18
3163	Tijucas do Sul	18
3164	Toledo	18
3165	Tomazina	18
3166	Três Barras do Paraná	18
3167	Tunas do Paraná	18
3168	Tuneiras do Oeste	18
3169	Tupãssi	18
3170	Turvo	18
3171	Ubiratã	18
3172	Umuarama	18
3173	União da Vitória	18
3174	Uniflor	18
3175	Uraí	18
3176	Ventania	18
3177	Vera Cruz do Oeste	18
3178	Verê	18
3179	Virmond	18
3180	Vitorino	18
3181	Wenceslau Braz	18
3182	Xambrê	18
3183	Abreu e Lima	16
3184	Afogados da Ingazeira	16
3185	Afrânio	16
3186	Agrestina	16
3187	Água Preta	16
3188	Águas Belas	16
3189	Alagoinha	16
3190	Aliança	16
3191	Altinho	16
3192	Amaraji	16
3193	Angelim	16
3194	Araçoiaba	16
3195	Araripina	16
3196	Arcoverde	16
3197	Barra de Guabiraba	16
3198	Barreiros	16
3199	Belém de Maria	16
3200	Belém de São Francisco	16
3201	Belo Jardim	16
3202	Betânia	16
3203	Bezerros	16
3204	Bodocó	16
3205	Bom Conselho	16
3206	Bom Jardim	16
3207	Bonito	16
3208	Brejão	16
3209	Brejinho	16
3210	Brejo da Madre de Deus	16
3211	Buenos Aires	16
3212	Buíque	16
3213	Cabo de Santo Agostinho	16
3214	Cabrobó	16
3215	Cachoeirinha	16
3216	Caetés	16
3217	Calçado	16
3218	Calumbi	16
3219	Camaragibe	16
3220	Camocim de São Félix	16
3221	Camutanga	16
3222	Canhotinho	16
3223	Capoeiras	16
3224	Carnaíba	16
3225	Carnaubeira da Penha	16
3226	Carpina	16
3227	Caruaru	16
3228	Casinhas	16
3229	Catende	16
3230	Cedro	16
3231	Chã de Alegria	16
3232	Chã Grande	16
3233	Condado	16
3234	Correntes	16
3235	Cortês	16
3236	Cumaru	16
3237	Cupira	16
3238	Custódia	16
3239	Dormentes	16
3240	Escada	16
3241	Exu	16
3242	Feira Nova	16
3243	Fernando de Noronha	16
3244	Ferreiros	16
3245	Flores	16
3246	Floresta	16
3247	Frei Miguelinho	16
3248	Gameleira	16
3249	Garanhuns	16
3250	Glória do Goitá	16
3251	Goiana	16
3252	Granito	16
3253	Gravatá	16
3254	Iati	16
3255	Ibimirim	16
3256	Ibirajuba	16
3257	Igarassu	16
3258	Iguaraci	16
3259	Ilha de Itamaracá	16
3260	Inajá	16
3261	Ingazeira	16
3262	Ipojuca	16
3263	Ipubi	16
3264	Itacuruba	16
3265	Itaíba	16
3266	Itambé	16
3267	Itapetim	16
3268	Itapissuma	16
3269	Itaquitinga	16
3270	Jaboatão dos Guararapes	16
3271	Jaqueira	16
3272	Jataúba	16
3273	Jatobá	16
3274	João Alfredo	16
3275	Joaquim Nabuco	16
3276	Jucati	16
3277	Jupi	16
3278	Jurema	16
3279	Lagoa do Carro	16
3280	Lagoa do Itaenga	16
3281	Lagoa do Ouro	16
3282	Lagoa dos Gatos	16
3283	Lagoa Grande	16
3284	Lajedo	16
3285	Limoeiro	16
3286	Macaparana	16
3287	Machados	16
3288	Manari	16
3289	Maraial	16
3290	Mirandiba	16
3291	Moreilândia	16
3292	Moreno	16
3293	Nazaré da Mata	16
3294	Olinda	16
3295	Orobó	16
3296	Orocó	16
3297	Ouricuri	16
3298	Palmares	16
3299	Palmeirina	16
3300	Panelas	16
3301	Paranatama	16
3302	Parnamirim	16
3303	Passira	16
3304	Paudalho	16
3305	Paulista	16
3306	Pedra	16
3307	Pesqueira	16
3308	Petrolândia	16
3309	Petrolina	16
3310	Poção	16
3311	Pombos	16
3312	Primavera	16
3313	Quipapá	16
3314	Quixaba	16
3315	Recife	16
3316	Riacho das Almas	16
3317	Ribeirão	16
3318	Rio Formoso	16
3319	Sairé	16
3320	Salgadinho	16
3321	Salgueiro	16
3322	Saloá	16
3323	Sanharó	16
3324	Santa Cruz	16
3325	Santa Cruz da Baixa Verde	16
3326	Santa Cruz do Capibaribe	16
3327	Santa Filomena	16
3328	Santa Maria da Boa Vista	16
3329	Santa Maria do Cambucá	16
3330	Santa Terezinha	16
3331	São Benedito do Sul	16
3332	São Bento do Una	16
3333	São Caitano	16
3334	São João	16
3335	São Joaquim do Monte	16
3336	São José da Coroa Grande	16
3337	São José do Belmonte	16
3338	São José do Egito	16
3339	São Lourenço da Mata	16
3340	São Vicente Ferrer	16
3341	Serra Talhada	16
3342	Serrita	16
3343	Sertânia	16
3344	Sirinhaém	16
3345	Solidão	16
3346	Surubim	16
3347	Tabira	16
3348	Tacaimbó	16
3349	Tacaratu	16
3350	Tamandaré	16
3351	Taquaritinga do Norte	16
3352	Terezinha	16
3353	Terra Nova	16
3354	Timbaúba	16
3355	Toritama	16
3356	Tracunhaém	16
3357	Trindade	16
3358	Triunfo	16
3359	Tupanatinga	16
3360	Tuparetama	16
3361	Venturosa	16
3362	Verdejante	16
3363	Vertente do Lério	16
3364	Vertentes	16
3365	Vicência	16
3366	Vitória de Santo Antão	16
3367	Xexéu	16
3368	Acauã	17
3369	Agricolândia	17
3370	Água Branca	17
3371	Alagoinha do Piauí	17
3372	Alegrete do Piauí	17
3373	Alto Longá	17
3374	Altos	17
3375	Alvorada do Gurguéia	17
3376	Amarante	17
3377	Angical do Piauí	17
3378	Anísio de Abreu	17
3379	Antônio Almeida	17
3380	Aroazes	17
3381	Aroeiras do Itaim	17
3382	Arraial	17
3383	Assunção do Piauí	17
3384	Avelino Lopes	17
3385	Baixa Grande do Ribeiro	17
3386	Barra dAlcântara	17
3387	Barras	17
3388	Barreiras do Piauí	17
3389	Barro Duro	17
3390	Batalha	17
3391	Bela Vista do Piauí	17
3392	Belém do Piauí	17
3393	Beneditinos	17
3394	Bertolínia	17
3395	Betânia do Piauí	17
3396	Boa Hora	17
3397	Bocaina	17
3398	Bom Jesus	17
3399	Bom Princípio do Piauí	17
3400	Bonfim do Piauí	17
3401	Boqueirão do Piauí	17
3402	Brasileira	17
3403	Brejo do Piauí	17
3404	Buriti dos Lopes	17
3405	Buriti dos Montes	17
3406	Cabeceiras do Piauí	17
3407	Cajazeiras do Piauí	17
3408	Cajueiro da Praia	17
3409	Caldeirão Grande do Piauí	17
3410	Campinas do Piauí	17
3411	Campo Alegre do Fidalgo	17
3412	Campo Grande do Piauí	17
3413	Campo Largo do Piauí	17
3414	Campo Maior	17
3415	Canavieira	17
3416	Canto do Buriti	17
3417	Capitão de Campos	17
3418	Capitão Gervásio Oliveira	17
3419	Caracol	17
3420	Caraúbas do Piauí	17
3421	Caridade do Piauí	17
3422	Castelo do Piauí	17
3423	Caxingó	17
3424	Cocal	17
3425	Cocal de Telha	17
3426	Cocal dos Alves	17
3427	Coivaras	17
3428	Colônia do Gurguéia	17
3429	Colônia do Piauí	17
3430	Conceição do Canindé	17
3431	Coronel José Dias	17
3432	Corrente	17
3433	Cristalândia do Piauí	17
3434	Cristino Castro	17
3435	Curimatá	17
3436	Currais	17
3437	Curral Novo do Piauí	17
3438	Curralinhos	17
3439	Demerval Lobão	17
3440	Dirceu Arcoverde	17
3441	Dom Expedito Lopes	17
3442	Dom Inocêncio	17
3443	Domingos Mourão	17
3444	Elesbão Veloso	17
3445	Eliseu Martins	17
3446	Esperantina	17
3447	Fartura do Piauí	17
3448	Flores do Piauí	17
3449	Floresta do Piauí	17
3450	Floriano	17
3451	Francinópolis	17
3452	Francisco Ayres	17
3453	Francisco Macedo	17
3454	Francisco Santos	17
3455	Fronteiras	17
3456	Geminiano	17
3457	Gilbués	17
3458	Guadalupe	17
3459	Guaribas	17
3460	Hugo Napoleão	17
3461	Ilha Grande	17
3462	Inhuma	17
3463	Ipiranga do Piauí	17
3464	Isaías Coelho	17
3465	Itainópolis	17
3466	Itaueira	17
3467	Jacobina do Piauí	17
3468	Jaicós	17
3469	Jardim do Mulato	17
3470	Jatobá do Piauí	17
3471	Jerumenha	17
3472	João Costa	17
3473	Joaquim Pires	17
3474	Joca Marques	17
3475	José de Freitas	17
3476	Juazeiro do Piauí	17
3477	Júlio Borges	17
3478	Jurema	17
3479	Lagoa Alegre	17
3480	Lagoa de São Francisco	17
3481	Lagoa do Barro do Piauí	17
3482	Lagoa do Piauí	17
3483	Lagoa do Sítio	17
3484	Lagoinha do Piauí	17
3485	Landri Sales	17
3486	Luís Correia	17
3487	Luzilândia	17
3488	Madeiro	17
3489	Manoel Emídio	17
3490	Marcolândia	17
3491	Marcos Parente	17
3492	Massapê do Piauí	17
3493	Matias Olímpio	17
3494	Miguel Alves	17
3495	Miguel Leão	17
3496	Milton Brandão	17
3497	Monsenhor Gil	17
3498	Monsenhor Hipólito	17
3499	Monte Alegre do Piauí	17
3500	Morro Cabeça no Tempo	17
3501	Morro do Chapéu do Piauí	17
3502	Murici dos Portelas	17
3503	Nazaré do Piauí	17
3504	Nossa Senhora de Nazaré	17
3505	Nossa Senhora dos Remédios	17
3506	Nova Santa Rita	17
3507	Novo Oriente do Piauí	17
3508	Novo Santo Antônio	17
3509	Oeiras	17
3510	Olho dÁgua do Piauí	17
3511	Padre Marcos	17
3512	Paes Landim	17
3513	Pajeú do Piauí	17
3514	Palmeira do Piauí	17
3515	Palmeirais	17
3516	Paquetá	17
3517	Parnaguá	17
3518	Parnaíba	17
3519	Passagem Franca do Piauí	17
3520	Patos do Piauí	17
3521	Pau dArco do Piauí	17
3522	Paulistana	17
3523	Pavussu	17
3524	Pedro II	17
3525	Pedro Laurentino	17
3526	Picos	17
3527	Pimenteiras	17
3528	Pio IX	17
3529	Piracuruca	17
3530	Piripiri	17
3531	Porto	17
3532	Porto Alegre do Piauí	17
3533	Prata do Piauí	17
3534	Queimada Nova	17
3535	Redenção do Gurguéia	17
3536	Regeneração	17
3537	Riacho Frio	17
3538	Ribeira do Piauí	17
3539	Ribeiro Gonçalves	17
3540	Rio Grande do Piauí	17
3541	Santa Cruz do Piauí	17
3542	Santa Cruz dos Milagres	17
3543	Santa Filomena	17
3544	Santa Luz	17
3545	Santa Rosa do Piauí	17
3546	Santana do Piauí	17
3547	Santo Antônio de Lisboa	17
3548	Santo Antônio dos Milagres	17
3549	Santo Inácio do Piauí	17
3550	São Braz do Piauí	17
3551	São Félix do Piauí	17
3552	São Francisco de Assis do Piauí	17
3553	São Francisco do Piauí	17
3554	São Gonçalo do Gurguéia	17
3555	São Gonçalo do Piauí	17
3556	São João da Canabrava	17
3557	São João da Fronteira	17
3558	São João da Serra	17
3559	São João da Varjota	17
3560	São João do Arraial	17
3561	São João do Piauí	17
3562	São José do Divino	17
3563	São José do Peixe	17
3564	São José do Piauí	17
3565	São Julião	17
3566	São Lourenço do Piauí	17
3567	São Luis do Piauí	17
3568	São Miguel da Baixa Grande	17
3569	São Miguel do Fidalgo	17
3570	São Miguel do Tapuio	17
3571	São Pedro do Piauí	17
3572	São Raimundo Nonato	17
3573	Sebastião Barros	17
3574	Sebastião Leal	17
3575	Sigefredo Pacheco	17
3576	Simões	17
3577	Simplício Mendes	17
3578	Socorro do Piauí	17
3579	Sussuapara	17
3580	Tamboril do Piauí	17
3581	Tanque do Piauí	17
3582	Teresina	17
3583	União	17
3584	Uruçuí	17
3585	Valença do Piauí	17
3586	Várzea Branca	17
3587	Várzea Grande	17
3588	Vera Mendes	17
3589	Vila Nova do Piauí	17
3590	Wall Ferraz	17
3591	Angra dos Reis	19
3592	Aperibé	19
3593	Araruama	19
3594	Areal	19
3595	Armação dos Búzios	19
3596	Arraial do Cabo	19
3597	Barra do Piraí	19
3598	Barra Mansa	19
3599	Belford Roxo	19
3600	Bom Jardim	19
3601	Bom Jesus do Itabapoana	19
3602	Cabo Frio	19
3603	Cachoeiras de Macacu	19
3604	Cambuci	19
3605	Campos dos Goytacazes	19
3606	Cantagalo	19
3607	Carapebus	19
3608	Cardoso Moreira	19
3609	Carmo	19
3610	Casimiro de Abreu	19
3611	Comendador Levy Gasparian	19
3612	Conceição de Macabu	19
3613	Cordeiro	19
3614	Duas Barras	19
3615	Duque de Caxias	19
3616	Engenheiro Paulo de Frontin	19
3617	Guapimirim	19
3618	Iguaba Grande	19
3619	Itaboraí	19
3620	Itaguaí	19
3621	Italva	19
3622	Itaocara	19
3623	Itaperuna	19
3624	Itatiaia	19
3625	Japeri	19
3626	Laje do Muriaé	19
3627	Macaé	19
3628	Macuco	19
3629	Magé	19
3630	Mangaratiba	19
3631	Maricá	19
3632	Mendes	19
3633	Mesquita	19
3634	Miguel Pereira	19
3635	Miracema	19
3636	Natividade	19
3637	Nilópolis	19
3638	Niterói	19
3639	Nova Friburgo	19
3640	Nova Iguaçu	19
3641	Paracambi	19
3642	Paraíba do Sul	19
3643	Parati	19
3644	Paty do Alferes	19
3645	Petrópolis	19
3646	Pinheiral	19
3647	Piraí	19
3648	Porciúncula	19
3649	Porto Real	19
3650	Quatis	19
3651	Queimados	19
3652	Quissamã	19
3653	Resende	19
3654	Rio Bonito	19
3655	Rio Claro	19
3656	Rio das Flores	19
3657	Rio das Ostras	19
3658	Rio de Janeiro	19
3659	Santa Maria Madalena	19
3660	Santo Antônio de Pádua	19
3661	São Fidélis	19
3662	São Francisco de Itabapoana	19
3663	São Gonçalo	19
3664	São João da Barra	19
3665	São João de Meriti	19
3666	São José de Ubá	19
3667	São José do Vale do Rio Pret	19
3668	São Pedro da Aldeia	19
3669	São Sebastião do Alto	19
3670	Sapucaia	19
3671	Saquarema	19
3672	Seropédica	19
3673	Silva Jardim	19
3674	Sumidouro	19
3675	Tanguá	19
3676	Teresópolis	19
3677	Trajano de Morais	19
3678	Três Rios	19
3679	Valença	19
3680	Varre-Sai	19
3681	Vassouras	19
3682	Volta Redonda	19
3683	Acari	20
3684	Açu	20
3685	Afonso Bezerra	20
3686	Água Nova	20
3687	Alexandria	20
3688	Almino Afonso	20
3689	Alto do Rodrigues	20
3690	Angicos	20
3691	Antônio Martins	20
3692	Apodi	20
3693	Areia Branca	20
3694	Arês	20
3695	Augusto Severo	20
3696	Baía Formosa	20
3697	Baraúna	20
3698	Barcelona	20
3699	Bento Fernandes	20
3700	Bodó	20
3701	Bom Jesus	20
3702	Brejinho	20
3703	Caiçara do Norte	20
3704	Caiçara do Rio do Vento	20
3705	Caicó	20
3706	Campo Redondo	20
3707	Canguaretama	20
3708	Caraúbas	20
3709	Carnaúba dos Dantas	20
3710	Carnaubais	20
3711	Ceará-Mirim	20
3712	Cerro Corá	20
3713	Coronel Ezequiel	20
3714	Coronel João Pessoa	20
3715	Cruzeta	20
3716	Currais Novos	20
3717	Doutor Severiano	20
3718	Encanto	20
3719	Equador	20
3720	Espírito Santo	20
3721	Extremoz	20
3722	Felipe Guerra	20
3723	Fernando Pedroza	20
3724	Florânia	20
3725	Francisco Dantas	20
3726	Frutuoso Gomes	20
3727	Galinhos	20
3728	Goianinha	20
3729	Governador Dix-Sept Rosado	20
3730	Grossos	20
3731	Guamaré	20
3732	Ielmo Marinho	20
3733	Ipanguaçu	20
3734	Ipueira	20
3735	Itajá	20
3736	Itaú	20
3737	Jaçanã	20
3738	Jandaíra	20
3739	Janduís	20
3740	Januário Cicco	20
3741	Japi	20
3742	Jardim de Angicos	20
3743	Jardim de Piranhas	20
3744	Jardim do Seridó	20
3745	João Câmara	20
3746	João Dias	20
3747	José da Penha	20
3748	Jucurutu	20
3749	Jundiá	20
3750	Lagoa dAnta	20
3751	Lagoa de Pedras	20
3752	Lagoa de Velhos	20
3753	Lagoa Nova	20
3754	Lagoa Salgada	20
3755	Lajes	20
3756	Lajes Pintadas	20
3757	Lucrécia	20
3758	Luís Gomes	20
3759	Macaíba	20
3760	Macau	20
3761	Major Sales	20
3762	Marcelino Vieira	20
3763	Martins	20
3764	Maxaranguape	20
3765	Messias Targino	20
3766	Montanhas	20
3767	Monte Alegre	20
3768	Monte das Gameleiras	20
3769	Mossoró	20
3770	Natal	20
3771	Nísia Floresta	20
3772	Nova Cruz	20
3773	Olho-dÁgua do Borges	20
3774	Ouro Branco	20
3775	Paraná	20
3776	Paraú	20
3777	Parazinho	20
3778	Parelhas	20
3779	Parnamirim	20
3780	Passa e Fica	20
3781	Passagem	20
3782	Patu	20
3783	Pau dos Ferros	20
3784	Pedra Grande	20
3785	Pedra Preta	20
3786	Pedro Avelino	20
3787	Pedro Velho	20
3788	Pendências	20
3789	Pilões	20
3790	Poço Branco	20
3791	Portalegre	20
3792	Porto do Mangue	20
3793	Presidente Juscelino	20
3794	Pureza	20
3795	Rafael Fernandes	20
3796	Rafael Godeiro	20
3797	Riacho da Cruz	20
3798	Riacho de Santana	20
3799	Riachuelo	20
3800	Rio do Fogo	20
3801	Rodolfo Fernandes	20
3802	Ruy Barbosa	20
3803	Santa Cruz	20
3804	Santa Maria	20
3805	Santana do Matos	20
3806	Santana do Seridó	20
3807	Santo Antônio	20
3808	São Bento do Norte	20
3809	São Bento do Trairí	20
3810	São Fernando	20
3811	São Francisco do Oeste	20
3812	São Gonçalo do Amarante	20
3813	São João do Sabugi	20
3814	São José de Mipibu	20
3815	São José do Campestre	20
3816	São José do Seridó	20
3817	São Miguel	20
3818	São Miguel do Gostoso	20
3819	São Paulo do Potengi	20
3820	São Pedro	20
3821	São Rafael	20
3822	São Tomé	20
3823	São Vicente	20
3824	Senador Elói de Souza	20
3825	Senador Georgino Avelino	20
3826	Serra de São Bento	20
3827	Serra do Mel	20
3828	Serra Negra do Norte	20
3829	Serrinha	20
3830	Serrinha dos Pintos	20
3831	Severiano Melo	20
3832	Sítio Novo	20
3833	Taboleiro Grande	20
3834	Taipu	20
3835	Tangará	20
3836	Tenente Ananias	20
3837	Tenente Laurentino Cruz	20
3838	Tibau	20
3839	Tibau do Sul	20
3840	Timbaúba dos Batistas	20
3841	Touros	20
3842	Triunfo Potiguar	20
3843	Umarizal	20
3844	Upanema	20
3845	Várzea	20
3846	Venha-Ver	20
3847	Vera Cruz	20
3848	Viçosa	20
3849	Vila Flor	20
3850	Aceguá	23
3851	Água Santa	23
3852	Agudo	23
3853	Ajuricaba	23
3854	Alecrim	23
3855	Alegrete	23
3856	Alegria	23
3857	Almirante Tamandaré do Sul	23
3858	Alpestre	23
3859	Alto Alegre	23
3860	Alto Feliz	23
3861	Alvorada	23
3862	Amaral Ferrador	23
3863	Ametista do Sul	23
3864	André da Rocha	23
3865	Anta Gorda	23
3866	Antônio Prado	23
3867	Arambaré	23
3868	Araricá	23
3869	Aratiba	23
3870	Arroio do Meio	23
3871	Arroio do Padre	23
3872	Arroio do Sal	23
3873	Arroio do Tigre	23
3874	Arroio dos Ratos	23
3875	Arroio Grande	23
3876	Arvorezinha	23
3877	Augusto Pestana	23
3878	Áurea	23
3879	Bagé	23
3880	Balneário Pinhal	23
3881	Barão	23
3882	Barão de Cotegipe	23
3883	Barão do Triunfo	23
3884	Barra do Guarita	23
3885	Barra do Quaraí	23
3886	Barra do Ribeiro	23
3887	Barra do Rio Azul	23
3888	Barra Funda	23
3889	Barracão	23
3890	Barros Cassal	23
3891	Benjamin Constant do Sul	23
3892	Bento Gonçalves	23
3893	Boa Vista das Missões	23
3894	Boa Vista do Buricá	23
3895	Boa Vista do Cadeado	23
3896	Boa Vista do Incra	23
3897	Boa Vista do Sul	23
3898	Bom Jesus	23
3899	Bom Princípio	23
3900	Bom Progresso	23
3901	Bom Retiro do Sul	23
3902	Boqueirão do Leão	23
3903	Bossoroca	23
3904	Bozano	23
3905	Braga	23
3906	Brochier	23
3907	Butiá	23
3908	Caçapava do Sul	23
3909	Cacequi	23
3910	Cachoeira do Sul	23
3911	Cachoeirinha	23
3912	Cacique Doble	23
3913	Caibaté	23
3914	Caiçara	23
3915	Camaquã	23
3916	Camargo	23
3917	Cambará do Sul	23
3918	Campestre da Serra	23
3919	Campina das Missões	23
3920	Campinas do Sul	23
3921	Campo Bom	23
3922	Campo Novo	23
3923	Campos Borges	23
3924	Candelária	23
3925	Cândido Godói	23
3926	Candiota	23
3927	Canela	23
3928	Canguçu	23
3929	Canoas	23
3930	Canudos do Vale	23
3931	Capão Bonito do Sul	23
3932	Capão da Canoa	23
3933	Capão do Cipó	23
3934	Capão do Leão	23
3935	Capela de Santana	23
3936	Capitão	23
3937	Capivari do Sul	23
3938	Caraá	23
3939	Carazinho	23
3940	Carlos Barbosa	23
3941	Carlos Gomes	23
3942	Casca	23
3943	Caseiros	23
3944	Catuípe	23
3945	Caxias do Sul	23
3946	Centenário	23
3947	Cerrito	23
3948	Cerro Branco	23
3949	Cerro Grande	23
3950	Cerro Grande do Sul	23
3951	Cerro Largo	23
3952	Chapada	23
3953	Charqueadas	23
3954	Charrua	23
3955	Chiapeta	23
3956	Chuí	23
3957	Chuvisca	23
3958	Cidreira	23
3959	Ciríaco	23
3960	Colinas	23
3961	Colorado	23
3962	Condor	23
3963	Constantina	23
3964	Coqueiro Baixo	23
3965	Coqueiros do Sul	23
3966	Coronel Barros	23
3967	Coronel Bicaco	23
3968	Coronel Pilar	23
3969	Cotiporã	23
3970	Coxilha	23
3971	Crissiumal	23
3972	Cristal	23
3973	Cristal do Sul	23
3974	Cruz Alta	23
3975	Cruzaltense	23
3976	Cruzeiro do Sul	23
3977	David Canabarro	23
3978	Derrubadas	23
3979	Dezesseis de Novembro	23
3980	Dilermando de Aguiar	23
3981	Dois Irmãos	23
3982	Dois Irmãos das Missões	23
3983	Dois Lajeados	23
3984	Dom Feliciano	23
3985	Dom Pedrito	23
3986	Dom Pedro de Alcântara	23
3987	Dona Francisca	23
3988	Doutor Maurício Cardoso	23
3989	Doutor Ricardo	23
3990	Eldorado do Sul	23
3991	Encantado	23
3992	Encruzilhada do Sul	23
3993	Engenho Velho	23
3994	Entre Rios do Sul	23
3995	Entre-Ijuís	23
3996	Erebango	23
3997	Erechim	23
3998	Ernestina	23
3999	Erval Grande	23
4000	Erval Seco	23
4001	Esmeralda	23
4002	Esperança do Sul	23
4003	Espumoso	23
4004	Estação	23
4005	Estância Velha	23
4006	Esteio	23
4007	Estrela	23
4008	Estrela Velha	23
4009	Eugênio de Castro	23
4010	Fagundes Varela	23
4011	Farroupilha	23
4012	Faxinal do Soturno	23
4013	Faxinalzinho	23
4014	Fazenda Vilanova	23
4015	Feliz	23
4016	Flores da Cunha	23
4017	Floriano Peixoto	23
4018	Fontoura Xavier	23
4019	Formigueiro	23
4020	Forquetinha	23
4021	Fortaleza dos Valos	23
4022	Frederico Westphalen	23
4023	Garibaldi	23
4024	Garruchos	23
4025	Gaurama	23
4026	General Câmara	23
4027	Gentil	23
4028	Getúlio Vargas	23
4029	Giruá	23
4030	Glorinha	23
4031	Gramado	23
4032	Gramado dos Loureiros	23
4033	Gramado Xavier	23
4034	Gravataí	23
4035	Guabiju	23
4036	Guaíba	23
4037	Guaporé	23
4038	Guarani das Missões	23
4039	Harmonia	23
4040	Herval	23
4041	Herveiras	23
4042	Horizontina	23
4043	Hulha Negra	23
4044	Humaitá	23
4045	Ibarama	23
4046	Ibiaçá	23
4047	Ibiraiaras	23
4048	Ibirapuitã	23
4049	Ibirubá	23
4050	Igrejinha	23
4051	Ijuí	23
4052	Ilópolis	23
4053	Imbé	23
4054	Imigrante	23
4055	Independência	23
4056	Inhacorá	23
4057	Ipê	23
4058	Ipiranga do Sul	23
4059	Iraí	23
4060	Itaara	23
4061	Itacurubi	23
4062	Itapuca	23
4063	Itaqui	23
4064	Itati	23
4065	Itatiba do Sul	23
4066	Ivorá	23
4067	Ivoti	23
4068	Jaboticaba	23
4069	Jacuizinho	23
4070	Jacutinga	23
4071	Jaguarão	23
4072	Jaguari	23
4073	Jaquirana	23
4074	Jari	23
4075	Jóia	23
4076	Júlio de Castilhos	23
4077	Lagoa Bonita do Sul	23
4078	Lagoa dos Três Cantos	23
4079	Lagoa Vermelha	23
4080	Lagoão	23
4081	Lajeado	23
4082	Lajeado do Bugre	23
4083	Lavras do Sul	23
4084	Liberato Salzano	23
4085	Lindolfo Collor	23
4086	Linha Nova	23
4087	Maçambara	23
4088	Machadinho	23
4089	Mampituba	23
4090	Manoel Viana	23
4091	Maquiné	23
4092	Maratá	23
4093	Marau	23
4094	Marcelino Ramos	23
4095	Mariana Pimentel	23
4096	Mariano Moro	23
4097	Marques de Souza	23
4098	Mata	23
4099	Mato Castelhano	23
4100	Mato Leitão	23
4101	Mato Queimado	23
4102	Maximiliano de Almeida	23
4103	Minas do Leão	23
4104	Miraguaí	23
4105	Montauri	23
4106	Monte Alegre dos Campos	23
4107	Monte Belo do Sul	23
4108	Montenegro	23
4109	Mormaço	23
4110	Morrinhos do Sul	23
4111	Morro Redondo	23
4112	Morro Reuter	23
4113	Mostardas	23
4114	Muçum	23
4115	Muitos Capões	23
4116	Muliterno	23
4117	Não-Me-Toque	23
4118	Nicolau Vergueiro	23
4119	Nonoai	23
4120	Nova Alvorada	23
4121	Nova Araçá	23
4122	Nova Bassano	23
4123	Nova Boa Vista	23
4124	Nova Bréscia	23
4125	Nova Candelária	23
4126	Nova Esperança do Sul	23
4127	Nova Hartz	23
4128	Nova Pádua	23
4129	Nova Palma	23
4130	Nova Petrópolis	23
4131	Nova Prata	23
4132	Nova Ramada	23
4133	Nova Roma do Sul	23
4134	Nova Santa Rita	23
4135	Novo Barreiro	23
4136	Novo Cabrais	23
4137	Novo Hamburgo	23
4138	Novo Machado	23
4139	Novo Tiradentes	23
4140	Novo Xingu	23
4141	Osório	23
4142	Paim Filho	23
4143	Palmares do Sul	23
4144	Palmeira das Missões	23
4145	Palmitinho	23
4146	Panambi	23
4147	Pantano Grande	23
4148	Paraí	23
4149	Paraíso do Sul	23
4150	Pareci Novo	23
4151	Parobé	23
4152	Passa Sete	23
4153	Passo do Sobrado	23
4154	Passo Fundo	23
4155	Paulo Bento	23
4156	Paverama	23
4157	Pedras Altas	23
4158	Pedro Osório	23
4159	Pejuçara	23
4160	Pelotas	23
4161	Picada Café	23
4162	Pinhal	23
4163	Pinhal da Serra	23
4164	Pinhal Grande	23
4165	Pinheirinho do Vale	23
4166	Pinheiro Machado	23
4167	Pirapó	23
4168	Piratini	23
4169	Planalto	23
4170	Poço das Antas	23
4171	Pontão	23
4172	Ponte Preta	23
4173	Portão	23
4174	Porto Alegre	23
4175	Porto Lucena	23
4176	Porto Mauá	23
4177	Porto Vera Cruz	23
4178	Porto Xavier	23
4179	Pouso Novo	23
4180	Presidente Lucena	23
4181	Progresso	23
4182	Protásio Alves	23
4183	Putinga	23
4184	Quaraí	23
4185	Quatro Irmãos	23
4186	Quevedos	23
4187	Quinze de Novembro	23
4188	Redentora	23
4189	Relvado	23
4190	Restinga Seca	23
4191	Rio dos Índios	23
4192	Rio Grande	23
4193	Rio Pardo	23
4194	Riozinho	23
4195	Roca Sales	23
4196	Rodeio Bonito	23
4197	Rolador	23
4198	Rolante	23
4199	Ronda Alta	23
4200	Rondinha	23
4201	Roque Gonzales	23
4202	Rosário do Sul	23
4203	Sagrada Família	23
4204	Saldanha Marinho	23
4205	Salto do Jacuí	23
4206	Salvador das Missões	23
4207	Salvador do Sul	23
4208	Sananduva	23
4209	Santa Bárbara do Sul	23
4210	Santa Cecília do Sul	23
4211	Santa Clara do Sul	23
4212	Santa Cruz do Sul	23
4213	Santa Margarida do Sul	23
4214	Santa Maria	23
4215	Santa Maria do Herval	23
4216	Santa Rosa	23
4217	Santa Tereza	23
4218	Santa Vitória do Palmar	23
4219	Santana da Boa Vista	23
4220	Santana do Livramento	23
4221	Santiago	23
4222	Santo Ângelo	23
4223	Santo Antônio da Patrulha	23
4224	Santo Antônio das Missões	23
4225	Santo Antônio do Palma	23
4226	Santo Antônio do Planalto	23
4227	Santo Augusto	23
4228	Santo Cristo	23
4229	Santo Expedito do Sul	23
4230	São Borja	23
4231	São Domingos do Sul	23
4232	São Francisco de Assis	23
4233	São Francisco de Paula	23
4234	São Gabriel	23
4235	São Jerônimo	23
4236	São João da Urtiga	23
4237	São João do Polêsine	23
4238	São Jorge	23
4239	São José das Missões	23
4240	São José do Herval	23
4241	São José do Hortêncio	23
4242	São José do Inhacorá	23
4243	São José do Norte	23
4244	São José do Ouro	23
4245	São José do Sul	23
4246	São José dos Ausentes	23
4247	São Leopoldo	23
4248	São Lourenço do Sul	23
4249	São Luiz Gonzaga	23
4250	São Marcos	23
4251	São Martinho	23
4252	São Martinho da Serra	23
4253	São Miguel das Missões	23
4254	São Nicolau	23
4255	São Paulo das Missões	23
4256	São Pedro da Serra	23
4257	São Pedro das Missões	23
4258	São Pedro do Butiá	23
4259	São Pedro do Sul	23
4260	São Sebastião do Caí	23
4261	São Sepé	23
4262	São Valentim	23
4263	São Valentim do Sul	23
4264	São Valério do Sul	23
4265	São Vendelino	23
4266	São Vicente do Sul	23
4267	Sapiranga	23
4268	Sapucaia do Sul	23
4269	Sarandi	23
4270	Seberi	23
4271	Sede Nova	23
4272	Segredo	23
4273	Selbach	23
4274	Senador Salgado Filho	23
4275	Sentinela do Sul	23
4276	Serafina Corrêa	23
4277	Sério	23
4278	Sertão	23
4279	Sertão Santana	23
4280	Sete de Setembro	23
4281	Severiano de Almeida	23
4282	Silveira Martins	23
4283	Sinimbu	23
4284	Sobradinho	23
4285	Soledade	23
4286	Tabaí	23
4287	Tapejara	23
4288	Tapera	23
4289	Tapes	23
4290	Taquara	23
4291	Taquari	23
4292	Taquaruçu do Sul	23
4293	Tavares	23
4294	Tenente Portela	23
4295	Terra de Areia	23
4296	Teutônia	23
4297	Tio Hugo	23
4298	Tiradentes do Sul	23
4299	Toropi	23
4300	Torres	23
4301	Tramandaí	23
4302	Travesseiro	23
4303	Três Arroios	23
4304	Três Cachoeiras	23
4305	Três Coroas	23
4306	Três de Maio	23
4307	Três Forquilhas	23
4308	Três Palmeiras	23
4309	Três Passos	23
4310	Trindade do Sul	23
4311	Triunfo	23
4312	Tucunduva	23
4313	Tunas	23
4314	Tupanci do Sul	23
4315	Tupanciretã	23
4316	Tupandi	23
4317	Tuparendi	23
4318	Turuçu	23
4319	Ubiretama	23
4320	União da Serra	23
4321	Unistalda	23
4322	Uruguaiana	23
4323	Vacaria	23
4324	Vale do Sol	23
4325	Vale Real	23
4326	Vale Verde	23
4327	Vanini	23
4328	Venâncio Aires	23
4329	Vera Cruz	23
4330	Veranópolis	23
4331	Vespasiano Correa	23
4332	Viadutos	23
4333	Viamão	23
4334	Vicente Dutra	23
4335	Victor Graeff	23
4336	Vila Flores	23
4337	Vila Lângaro	23
4338	Vila Maria	23
4339	Vila Nova do Sul	23
4340	Vista Alegre	23
4341	Vista Alegre do Prata	23
4342	Vista Gaúcha	23
4343	Vitória das Missões	23
4344	Westfália	23
4345	Xangri-lá	23
4346	Alta Floresta dOeste	21
4347	Alto Alegre dos Parecis	21
4348	Alto Paraíso	21
4349	Alvorada dOeste	21
4350	Ariquemes	21
4351	Buritis	21
4352	Cabixi	21
4353	Cacaulândia	21
4354	Cacoal	21
4355	Campo Novo de Rondônia	21
4356	Candeias do Jamari	21
4357	Castanheiras	21
4358	Cerejeiras	21
4359	Chupinguaia	21
4360	Colorado do Oeste	21
4361	Corumbiara	21
4362	Costa Marques	21
4363	Cujubim	21
4364	Espigão dOeste	21
4365	Governador Jorge Teixeira	21
4366	Guajará-Mirim	21
4367	Itapuã do Oeste	21
4368	Jaru	21
4369	Ji-Paraná	21
4370	Machadinho dOeste	21
4371	Ministro Andreazza	21
4372	Mirante da Serra	21
4373	Monte Negro	21
4374	Nova Brasilândia dOeste	21
4375	Nova Mamoré	21
4376	Nova União	21
4377	Novo Horizonte do Oeste	21
4378	Ouro Preto do Oeste	21
4379	Parecis	21
4380	Pimenta Bueno	21
4381	Pimenteiras do Oeste	21
4382	Porto Velho	21
4383	Presidente Médici	21
4384	Primavera de Rondônia	21
4385	Rio Crespo	21
4386	Rolim de Moura	21
4387	Santa Luzia dOeste	21
4388	São Felipe dOeste	21
4389	São Francisco do Guaporé	21
4390	São Miguel do Guaporé	21
4391	Seringueiras	21
4392	Teixeirópolis	21
4393	Theobroma	21
4394	Urupá	21
4395	Vale do Anari	21
4396	Vale do Paraíso	21
4397	Vilhena	21
4398	Alto Alegre	22
4399	Amajari	22
4400	Boa Vista	22
4401	Bonfim	22
4402	Cantá	22
4403	Caracaraí	22
4404	Caroebe	22
4405	Iracema	22
4406	Mucajaí	22
4407	Normandia	22
4408	Pacaraima	22
4409	Rorainópolis	22
4410	São João da Baliza	22
4411	São Luiz	22
4412	Uiramutã	22
4413	Abdon Batista	24
4414	Abelardo Luz	24
4415	Agrolândia	24
4416	Agronômica	24
4417	Água Doce	24
4418	Águas de Chapecó	24
4419	Águas Frias	24
4420	Águas Mornas	24
4421	Alfredo Wagner	24
4422	Alto Bela Vista	24
4423	Anchieta	24
4424	Angelina	24
4425	Anita Garibaldi	24
4426	Anitápolis	24
4427	Antônio Carlos	24
4428	Apiúna	24
4429	Arabutã	24
4430	Araquari	24
4431	Araranguá	24
4432	Armazém	24
4433	Arroio Trinta	24
4434	Arvoredo	24
4435	Ascurra	24
4436	Atalanta	24
4437	Aurora	24
4438	Balneário Arroio do Silva	24
4439	Balneário Barra do Sul	24
4440	Balneário Camboriú	24
4441	Balneário Gaivota	24
4442	Bandeirante	24
4443	Barra Bonita	24
4444	Barra Velha	24
4445	Bela Vista do Toldo	24
4446	Belmonte	24
4447	Benedito Novo	24
4448	Biguaçu	24
4449	Blumenau	24
4450	Bocaina do Sul	24
4451	Bom Jardim da Serra	24
4452	Bom Jesus	24
4453	Bom Jesus do Oeste	24
4454	Bom Retiro	24
4455	Bombinhas	24
4456	Botuverá	24
4457	Braço do Norte	24
4458	Braço do Trombudo	24
4459	Brunópolis	24
4460	Brusque	24
4461	Caçador	24
4462	Caibi	24
4463	Calmon	24
4464	Camboriú	24
4465	Campo Alegre	24
4466	Campo Belo do Sul	24
4467	Campo Erê	24
4468	Campos Novos	24
4469	Canelinha	24
4470	Canoinhas	24
4471	Capão Alto	24
4472	Capinzal	24
4473	Capivari de Baixo	24
4474	Catanduvas	24
4475	Caxambu do Sul	24
4476	Celso Ramos	24
4477	Cerro Negro	24
4478	Chapadão do Lageado	24
4479	Chapecó	24
4480	Cocal do Sul	24
4481	Concórdia	24
4482	Cordilheira Alta	24
4483	Coronel Freitas	24
4484	Coronel Martins	24
4485	Correia Pinto	24
4486	Corupá	24
4487	Criciúma	24
4488	Cunha Porã	24
4489	Cunhataí	24
4490	Curitibanos	24
4491	Descanso	24
4492	Dionísio Cerqueira	24
4493	Dona Emma	24
4494	Doutor Pedrinho	24
4495	Entre Rios	24
4496	Ermo	24
4497	Erval Velho	24
4498	Faxinal dos Guedes	24
4499	Flor do Sertão	24
4500	Florianópolis	24
4501	Formosa do Sul	24
4502	Forquilhinha	24
4503	Fraiburgo	24
4504	Frei Rogério	24
4505	Galvão	24
4506	Garopaba	24
4507	Garuva	24
4508	Gaspar	24
4509	Governador Celso Ramos	24
4510	Grão Pará	24
4511	Gravatal	24
4512	Guabiruba	24
4513	Guaraciaba	24
4514	Guaramirim	24
4515	Guarujá do Sul	24
4516	Guatambú	24
4517	Herval dOeste	24
4518	Ibiam	24
4519	Ibicaré	24
4520	Ibirama	24
4521	Içara	24
4522	Ilhota	24
4523	Imaruí	24
4524	Imbituba	24
4525	Imbuia	24
4526	Indaial	24
4527	Iomerê	24
4528	Ipira	24
4529	Iporã do Oeste	24
4530	Ipuaçu	24
4531	Ipumirim	24
4532	Iraceminha	24
4533	Irani	24
4534	Irati	24
4535	Irineópolis	24
4536	Itá	24
4537	Itaiópolis	24
4538	Itajaí	24
4539	Itapema	24
4540	Itapiranga	24
4541	Itapoá	24
4542	Ituporanga	24
4543	Jaborá	24
4544	Jacinto Machado	24
4545	Jaguaruna	24
4546	Jaraguá do Sul	24
4547	Jardinópolis	24
4548	Joaçaba	24
4549	Joinville	24
4550	José Boiteux	24
4551	Jupiá	24
4552	Lacerdópolis	24
4553	Lages	24
4554	Laguna	24
4555	Lajeado Grande	24
4556	Laurentino	24
4557	Lauro Muller	24
4558	Lebon Régis	24
4559	Leoberto Leal	24
4560	Lindóia do Sul	24
4561	Lontras	24
4562	Luiz Alves	24
4563	Luzerna	24
4564	Macieira	24
4565	Mafra	24
4566	Major Gercino	24
4567	Major Vieira	24
4568	Maracajá	24
4569	Maravilha	24
4570	Marema	24
4571	Massaranduba	24
4572	Matos Costa	24
4573	Meleiro	24
4574	Mirim Doce	24
4575	Modelo	24
4576	Mondaí	24
4577	Monte Carlo	24
4578	Monte Castelo	24
4579	Morro da Fumaça	24
4580	Morro Grande	24
4581	Navegantes	24
4582	Nova Erechim	24
4583	Nova Itaberaba	24
4584	Nova Trento	24
4585	Nova Veneza	24
4586	Novo Horizonte	24
4587	Orleans	24
4588	Otacílio Costa	24
4589	Ouro	24
4590	Ouro Verde	24
4591	Paial	24
4592	Painel	24
4593	Palhoça	24
4594	Palma Sola	24
4595	Palmeira	24
4596	Palmitos	24
4597	Papanduva	24
4598	Paraíso	24
4599	Passo de Torres	24
4600	Passos Maia	24
4601	Paulo Lopes	24
4602	Pedras Grandes	24
4603	Penha	24
4604	Peritiba	24
4605	Petrolândia	24
4606	Piçarras	24
4607	Pinhalzinho	24
4608	Pinheiro Preto	24
4609	Piratuba	24
4610	Planalto Alegre	24
4611	Pomerode	24
4612	Ponte Alta	24
4613	Ponte Alta do Norte	24
4614	Ponte Serrada	24
4615	Porto Belo	24
4616	Porto União	24
4617	Pouso Redondo	24
4618	Praia Grande	24
4619	Presidente Castelo Branco	24
4620	Presidente Getúlio	24
4621	Presidente Nereu	24
4622	Princesa	24
4623	Quilombo	24
4624	Rancho Queimado	24
4625	Rio das Antas	24
4626	Rio do Campo	24
4627	Rio do Oeste	24
4628	Rio do Sul	24
4629	Rio dos Cedros	24
4630	Rio Fortuna	24
4631	Rio Negrinho	24
4632	Rio Rufino	24
4633	Riqueza	24
4634	Rodeio	24
4635	Romelândia	24
4636	Salete	24
4637	Saltinho	24
4638	Salto Veloso	24
4639	Sangão	24
4640	Santa Cecília	24
4641	Santa Helena	24
4642	Santa Rosa de Lima	24
4643	Santa Rosa do Sul	24
4644	Santa Terezinha	24
4645	Santa Terezinha do Progresso	24
4646	Santiago do Sul	24
4647	Santo Amaro da Imperatriz	24
4648	São Bento do Sul	24
4649	São Bernardino	24
4650	São Bonifácio	24
4651	São Carlos	24
4652	São Cristovão do Sul	24
4653	São Domingos	24
4654	São Francisco do Sul	24
4655	São João Batista	24
4656	São João do Itaperiú	24
4657	São João do Oeste	24
4658	São João do Sul	24
4659	São Joaquim	24
4660	São José	24
4661	São José do Cedro	24
4662	São José do Cerrito	24
4663	São Lourenço do Oeste	24
4664	São Ludgero	24
4665	São Martinho	24
4666	São Miguel da Boa Vista	24
4667	São Miguel do Oeste	24
4668	São Pedro de Alcântara	24
4669	Saudades	24
4670	Schroeder	24
4671	Seara	24
4672	Serra Alta	24
4673	Siderópolis	24
4674	Sombrio	24
4675	Sul Brasil	24
4676	Taió	24
4677	Tangará	24
4678	Tigrinhos	24
4679	Tijucas	24
4680	Timbé do Sul	24
4681	Timbó	24
4682	Timbó Grande	24
4683	Três Barras	24
4684	Treviso	24
4685	Treze de Maio	24
4686	Treze Tílias	24
4687	Trombudo Central	24
4688	Tubarão	24
4689	Tunápolis	24
4690	Turvo	24
4691	União do Oeste	24
4692	Urubici	24
4693	Urupema	24
4694	Urussanga	24
4695	Vargeão	24
4696	Vargem	24
4697	Vargem Bonita	24
4698	Vidal Ramos	24
4699	Videira	24
4700	Vitor Meireles	24
4701	Witmarsum	24
4702	Xanxerê	24
4703	Xavantina	24
4704	Xaxim	24
4705	Zortéa	24
4706	Adamantina	26
4707	Adolfo	26
4708	Aguaí	26
4709	Águas da Prata	26
4710	Águas de Lindóia	26
4711	Águas de Santa Bárbara	26
4712	Águas de São Pedro	26
4713	Agudos	26
4714	Alambari	26
4715	Alfredo Marcondes	26
4716	Altair	26
4717	Altinópolis	26
4718	Alto Alegre	26
4719	Alumínio	26
4720	Álvares Florence	26
4721	Álvares Machado	26
4722	Álvaro de Carvalho	26
4723	Alvinlândia	26
4724	Americana	26
4725	Américo Brasiliense	26
4726	Américo de Campos	26
4727	Amparo	26
4728	Analândia	26
4729	Andradina	26
4730	Angatuba	26
4731	Anhembi	26
4732	Anhumas	26
4733	Aparecida	26
4734	Aparecida dOeste	26
4735	Apiaí	26
4736	Araçariguama	26
4737	Araçatuba	26
4738	Araçoiaba da Serra	26
4739	Aramina	26
4740	Arandu	26
4741	Arapeí	26
4742	Araraquara	26
4743	Araras	26
4744	Arco-Íris	26
4745	Arealva	26
4746	Areias	26
4747	Areiópolis	26
4748	Ariranha	26
4749	Artur Nogueira	26
4750	Arujá	26
4751	Aspásia	26
4752	Assis	26
4753	Atibaia	26
4754	Auriflama	26
4755	Avaí	26
4756	Avanhandava	26
4757	Avaré	26
4758	Bady Bassitt	26
4759	Balbinos	26
4760	Bálsamo	26
4761	Bananal	26
4762	Barão de Antonina	26
4763	Barbosa	26
4764	Bariri	26
4765	Barra Bonita	26
4766	Barra do Chapéu	26
4767	Barra do Turvo	26
4768	Barretos	26
4769	Barrinha	26
4770	Barueri	26
4771	Bastos	26
4772	Batatais	26
4773	Bauru	26
4774	Bebedouro	26
4775	Bento de Abreu	26
4776	Bernardino de Campos	26
4777	Bertioga	26
4778	Bilac	26
4779	Birigui	26
4780	Biritiba-Mirim	26
4781	Boa Esperança do Sul	26
4782	Bocaina	26
4783	Bofete	26
4784	Boituva	26
4785	Bom Jesus dos Perdões	26
4786	Bom Sucesso de Itararé	26
4787	Borá	26
4788	Boracéia	26
4789	Borborema	26
4790	Borebi	26
4791	Botucatu	26
4792	Bragança Paulista	26
4793	Braúna	26
4794	Brejo Alegre	26
4795	Brodowski	26
4796	Brotas	26
4797	Buri	26
4798	Buritama	26
4799	Buritizal	26
4800	Cabrália Paulista	26
4801	Cabreúva	26
4802	Caçapava	26
4803	Cachoeira Paulista	26
4804	Caconde	26
4805	Cafelândia	26
4806	Caiabu	26
4807	Caieiras	26
4808	Caiuá	26
4809	Cajamar	26
4810	Cajati	26
4811	Cajobi	26
4812	Cajuru	26
4813	Campina do Monte Alegre	26
4814	Campinas	26
4815	Campo Limpo Paulista	26
4816	Campos do Jordão	26
4817	Campos Novos Paulista	26
4818	Cananéia	26
4819	Canas	26
4820	Cândido Mota	26
4821	Cândido Rodrigues	26
4822	Canitar	26
4823	Capão Bonito	26
4824	Capela do Alto	26
4825	Capivari	26
4826	Caraguatatuba	26
4827	Carapicuíba	26
4828	Cardoso	26
4829	Casa Branca	26
4830	Cássia dos Coqueiros	26
4831	Castilho	26
4832	Catanduva	26
4833	Catiguá	26
4834	Cedral	26
4835	Cerqueira César	26
4836	Cerquilho	26
4837	Cesário Lange	26
4838	Charqueada	26
4839	Chavantes	26
4840	Clementina	26
4841	Colina	26
4842	Colômbia	26
4843	Conchal	26
4844	Conchas	26
4845	Cordeirópolis	26
4846	Coroados	26
4847	Coronel Macedo	26
4848	Corumbataí	26
4849	Cosmópolis	26
4850	Cosmorama	26
4851	Cotia	26
4852	Cravinhos	26
4853	Cristais Paulista	26
4854	Cruzália	26
4855	Cruzeiro	26
4856	Cubatão	26
4857	Cunha	26
4858	Descalvado	26
4859	Diadema	26
4860	Dirce Reis	26
4861	Divinolândia	26
4862	Dobrada	26
4863	Dois Córregos	26
4864	Dolcinópolis	26
4865	Dourado	26
4866	Dracena	26
4867	Duartina	26
4868	Dumont	26
4869	Echaporã	26
4870	Eldorado	26
4871	Elias Fausto	26
4872	Elisiário	26
4873	Embaúba	26
4874	Embu	26
4875	Embu-Guaçu	26
4876	Emilianópolis	26
4877	Engenheiro Coelho	26
4878	Espírito Santo do Pinhal	26
4879	Espírito Santo do Turvo	26
4880	Estiva Gerbi	26
4881	Estrela dOeste	26
4882	Estrela do Norte	26
4883	Euclides da Cunha Paulista	26
4884	Fartura	26
4885	Fernando Prestes	26
4886	Fernandópolis	26
4887	Fernão	26
4888	Ferraz de Vasconcelos	26
4889	Flora Rica	26
4890	Floreal	26
4891	Flórida Paulista	26
4892	Florínia	26
4893	Franca	26
4894	Francisco Morato	26
4895	Franco da Rocha	26
4896	Gabriel Monteiro	26
4897	Gália	26
4898	Garça	26
4899	Gastão Vidigal	26
4900	Gavião Peixoto	26
4901	General Salgado	26
4902	Getulina	26
4903	Glicério	26
4904	Guaiçara	26
4905	Guaimbê	26
4906	Guaíra	26
4907	Guapiaçu	26
4908	Guapiara	26
4909	Guará	26
4910	Guaraçaí	26
4911	Guaraci	26
4912	Guarani dOeste	26
4913	Guarantã	26
4914	Guararapes	26
4915	Guararema	26
4916	Guaratinguetá	26
4917	Guareí	26
4918	Guariba	26
4919	Guarujá	26
4920	Guarulhos	26
4921	Guatapará	26
4922	Guzolândia	26
4923	Herculândia	26
4924	Holambra	26
4925	Hortolândia	26
4926	Iacanga	26
4927	Iacri	26
4928	Iaras	26
4929	Ibaté	26
4930	Ibirá	26
4931	Ibirarema	26
4932	Ibitinga	26
4933	Ibiúna	26
4934	Icém	26
4935	Iepê	26
4936	Igaraçu do Tietê	26
4937	Igarapava	26
4938	Igaratá	26
4939	Iguape	26
4940	Ilha Comprida	26
4941	Ilha Solteira	26
4942	Ilhabela	26
4943	Indaiatuba	26
4944	Indiana	26
4945	Indiaporã	26
4946	Inúbia Paulista	26
4947	Ipaussu	26
4948	Iperó	26
4949	Ipeúna	26
4950	Ipiguá	26
4951	Iporanga	26
4952	Ipuã	26
4953	Iracemápolis	26
4954	Irapuã	26
4955	Irapuru	26
4956	Itaberá	26
4957	Itaí	26
4958	Itajobi	26
4959	Itaju	26
4960	Itanhaém	26
4961	Itaóca	26
4962	Itapecerica da Serra	26
4963	Itapetininga	26
4964	Itapeva	26
4965	Itapevi	26
4966	Itapira	26
4967	Itapirapuã Paulista	26
4968	Itápolis	26
4969	Itaporanga	26
4970	Itapuí	26
4971	Itapura	26
4972	Itaquaquecetuba	26
4973	Itararé	26
4974	Itariri	26
4975	Itatiba	26
4976	Itatinga	26
4977	Itirapina	26
4978	Itirapuã	26
4979	Itobi	26
4980	Itu	26
4981	Itupeva	26
4982	Ituverava	26
4983	Jaborandi	26
4984	Jaboticabal	26
4985	Jacareí	26
4986	Jaci	26
4987	Jacupiranga	26
4988	Jaguariúna	26
4989	Jales	26
4990	Jambeiro	26
4991	Jandira	26
4992	Jardinópolis	26
4993	Jarinu	26
4994	Jaú	26
4995	Jeriquara	26
4996	Joanópolis	26
4997	João Ramalho	26
4998	José Bonifácio	26
4999	Júlio Mesquita	26
5000	Jumirim	26
5001	Jundiaí	26
5002	Junqueirópolis	26
5003	Juquiá	26
5004	Juquitiba	26
5005	Lagoinha	26
5006	Laranjal Paulista	26
5007	Lavínia	26
5008	Lavrinhas	26
5009	Leme	26
5010	Lençóis Paulista	26
5011	Limeira	26
5012	Lindóia	26
5013	Lins	26
5014	Lorena	26
5015	Lourdes	26
5016	Louveira	26
5017	Lucélia	26
5018	Lucianópolis	26
5019	Luís Antônio	26
5020	Luiziânia	26
5021	Lupércio	26
5022	Lutécia	26
5023	Macatuba	26
5024	Macaubal	26
5025	Macedônia	26
5026	Magda	26
5027	Mairinque	26
5028	Mairiporã	26
5029	Manduri	26
5030	Marabá Paulista	26
5031	Maracaí	26
5032	Marapoama	26
5033	Mariápolis	26
5034	Marília	26
5035	Marinópolis	26
5036	Martinópolis	26
5037	Matão	26
5038	Mauá	26
5039	Mendonça	26
5040	Meridiano	26
5041	Mesópolis	26
5042	Miguelópolis	26
5043	Mineiros do Tietê	26
5044	Mira Estrela	26
5045	Miracatu	26
5046	Mirandópolis	26
5047	Mirante do Paranapanema	26
5048	Mirassol	26
5049	Mirassolândia	26
5050	Mococa	26
5051	Mogi das Cruzes	26
5052	Mogi Guaçu	26
5053	Moji Mirim	26
5054	Mombuca	26
5055	Monções	26
5056	Mongaguá	26
5057	Monte Alegre do Sul	26
5058	Monte Alto	26
5059	Monte Aprazível	26
5060	Monte Azul Paulista	26
5061	Monte Castelo	26
5062	Monte Mor	26
5063	Monteiro Lobato	26
5064	Morro Agudo	26
5065	Morungaba	26
5066	Motuca	26
5067	Murutinga do Sul	26
5068	Nantes	26
5069	Narandiba	26
5070	Natividade da Serra	26
5071	Nazaré Paulista	26
5072	Neves Paulista	26
5073	Nhandeara	26
5074	Nipoã	26
5075	Nova Aliança	26
5076	Nova Campina	26
5077	Nova Canaã Paulista	26
5078	Nova Castilho	26
5079	Nova Europa	26
5080	Nova Granada	26
5081	Nova Guataporanga	26
5082	Nova Independência	26
5083	Nova Luzitânia	26
5084	Nova Odessa	26
5085	Novais	26
5086	Novo Horizonte	26
5087	Nuporanga	26
5088	Ocauçu	26
5089	Óleo	26
5090	Olímpia	26
5091	Onda Verde	26
5092	Oriente	26
5093	Orindiúva	26
5094	Orlândia	26
5095	Osasco	26
5096	Oscar Bressane	26
5097	Osvaldo Cruz	26
5098	Ourinhos	26
5099	Ouro Verde	26
5100	Ouroeste	26
5101	Pacaembu	26
5102	Palestina	26
5103	Palmares Paulista	26
5104	Palmeira dOeste	26
5105	Palmital	26
5106	Panorama	26
5107	Paraguaçu Paulista	26
5108	Paraibuna	26
5109	Paraíso	26
5110	Paranapanema	26
5111	Paranapuã	26
5112	Parapuã	26
5113	Pardinho	26
5114	Pariquera-Açu	26
5115	Parisi	26
5116	Patrocínio Paulista	26
5117	Paulicéia	26
5118	Paulínia	26
5119	Paulistânia	26
5120	Paulo de Faria	26
5121	Pederneiras	26
5122	Pedra Bela	26
5123	Pedranópolis	26
5124	Pedregulho	26
5125	Pedreira	26
5126	Pedrinhas Paulista	26
5127	Pedro de Toledo	26
5128	Penápolis	26
5129	Pereira Barreto	26
5130	Pereiras	26
5131	Peruíbe	26
5132	Piacatu	26
5133	Piedade	26
5134	Pilar do Sul	26
5135	Pindamonhangaba	26
5136	Pindorama	26
5137	Pinhalzinho	26
5138	Piquerobi	26
5139	Piquete	26
5140	Piracaia	26
5141	Piracicaba	26
5142	Piraju	26
5143	Pirajuí	26
5144	Pirangi	26
5145	Pirapora do Bom Jesus	26
5146	Pirapozinho	26
5147	Pirassununga	26
5148	Piratininga	26
5149	Pitangueiras	26
5150	Planalto	26
5151	Platina	26
5152	Poá	26
5153	Poloni	26
5154	Pompéia	26
5155	Pongaí	26
5156	Pontal	26
5157	Pontalinda	26
5158	Pontes Gestal	26
5159	Populina	26
5160	Porangaba	26
5161	Porto Feliz	26
5162	Porto Ferreira	26
5163	Potim	26
5164	Potirendaba	26
5165	Pracinha	26
5166	Pradópolis	26
5167	Praia Grande	26
5168	Pratânia	26
5169	Presidente Alves	26
5170	Presidente Bernardes	26
5171	Presidente Epitácio	26
5172	Presidente Prudente	26
5173	Presidente Venceslau	26
5174	Promissão	26
5175	Quadra	26
5176	Quatá	26
5177	Queiroz	26
5178	Queluz	26
5179	Quintana	26
5180	Rafard	26
5181	Rancharia	26
5182	Redenção da Serra	26
5183	Regente Feijó	26
5184	Reginópolis	26
5185	Registro	26
5186	Restinga	26
5187	Ribeira	26
5188	Ribeirão Bonito	26
5189	Ribeirão Branco	26
5190	Ribeirão Corrente	26
5191	Ribeirão do Sul	26
5192	Ribeirão dos Índios	26
5193	Ribeirão Grande	26
5194	Ribeirão Pires	26
5195	Ribeirão Preto	26
5196	Rifaina	26
5197	Rincão	26
5198	Rinópolis	26
5199	Rio Claro	26
5200	Rio das Pedras	26
5201	Rio Grande da Serra	26
5202	Riolândia	26
5203	Riversul	26
5204	Rosana	26
5205	Roseira	26
5206	Rubiácea	26
5207	Rubinéia	26
5208	Sabino	26
5209	Sagres	26
5210	Sales	26
5211	Sales Oliveira	26
5212	Salesópolis	26
5213	Salmourão	26
5214	Saltinho	26
5215	Salto	26
5216	Salto de Pirapora	26
5217	Salto Grande	26
5218	Sandovalina	26
5219	Santa Adélia	26
5220	Santa Albertina	26
5221	Santa Bárbara dOeste	26
5222	Santa Branca	26
5223	Santa Clara dOeste	26
5224	Santa Cruz da Conceição	26
5225	Santa Cruz da Esperança	26
5226	Santa Cruz das Palmeiras	26
5227	Santa Cruz do Rio Pardo	26
5228	Santa Ernestina	26
5229	Santa Fé do Sul	26
5230	Santa Gertrudes	26
5231	Santa Isabel	26
5232	Santa Lúcia	26
5233	Santa Maria da Serra	26
5234	Santa Mercedes	26
5235	Santa Rita dOeste	26
5236	Santa Rita do Passa Quatro	26
5237	Santa Rosa de Viterbo	26
5238	Santa Salete	26
5239	Santana da Ponte Pensa	26
5240	Santana de Parnaíba	26
5241	Santo Anastácio	26
5242	Santo André	26
5243	Santo Antônio da Alegria	26
5244	Santo Antônio de Posse	26
5245	Santo Antônio do Aracanguá	26
5246	Santo Antônio do Jardim	26
5247	Santo Antônio do Pinhal	26
5248	Santo Expedito	26
5249	Santópolis do Aguapeí	26
5250	Santos	26
5251	São Bento do Sapucaí	26
5252	São Bernardo do Campo	26
5253	São Caetano do Sul	26
5254	São Carlos	26
5255	São Francisco	26
5256	São João da Boa Vista	26
5257	São João das Duas Pontes	26
5258	São João de Iracema	26
5259	São João do Pau dAlho	26
5260	São Joaquim da Barra	26
5261	São José da Bela Vista	26
5262	São José do Barreiro	26
5263	São José do Rio Pardo	26
5264	São José do Rio Preto	26
5265	São José dos Campos	26
5266	São Lourenço da Serra	26
5267	São Luís do Paraitinga	26
5268	São Manuel	26
5269	São Miguel Arcanjo	26
5270	São Paulo	26
5271	São Pedro	26
5272	São Pedro do Turvo	26
5273	São Roque	26
5274	São Sebastião	26
5275	São Sebastião da Grama	26
5276	São Simão	26
5277	São Vicente	26
5278	Sarapuí	26
5279	Sarutaiá	26
5280	Sebastianópolis do Sul	26
5281	Serra Azul	26
5282	Serra Negra	26
5283	Serrana	26
5284	Sertãozinho	26
5285	Sete Barras	26
5286	Severínia	26
5287	Silveiras	26
5288	Socorro	26
5289	Sorocaba	26
5290	Sud Mennucci	26
5291	Sumaré	26
5292	Suzanápolis	26
5293	Suzano	26
5294	Tabapuã	26
5295	Tabatinga	26
5296	Taboão da Serra	26
5297	Taciba	26
5298	Taguaí	26
5299	Taiaçu	26
5300	Taiúva	26
5301	Tambaú	26
5302	Tanabi	26
5303	Tapiraí	26
5304	Tapiratiba	26
5305	Taquaral	26
5306	Taquaritinga	26
5307	Taquarituba	26
5308	Taquarivaí	26
5309	Tarabai	26
5310	Tarumã	26
5311	Tatuí	26
5312	Taubaté	26
5313	Tejupá	26
5314	Teodoro Sampaio	26
5315	Terra Roxa	26
5316	Tietê	26
5317	Timburi	26
5318	Torre de Pedra	26
5319	Torrinha	26
5320	Trabiju	26
5321	Tremembé	26
5322	Três Fronteiras	26
5323	Tuiuti	26
5324	Tupã	26
5325	Tupi Paulista	26
5326	Turiúba	26
5327	Turmalina	26
5328	Ubarana	26
5329	Ubatuba	26
5330	Ubirajara	26
5331	Uchoa	26
5332	União Paulista	26
5333	Urânia	26
5334	Uru	26
5335	Urupês	26
5336	Valentim Gentil	26
5337	Valinhos	26
5338	Valparaíso	26
5339	Vargem	26
5340	Vargem Grande do Sul	26
5341	Vargem Grande Paulista	26
5342	Várzea Paulista	26
5343	Vera Cruz	26
5344	Vinhedo	26
5345	Viradouro	26
5346	Vista Alegre do Alto	26
5347	Vitória Brasil	26
5348	Votorantim	26
5349	Votuporanga	26
5350	Zacarias	26
5351	Amparo de São Francisco	25
5352	Aquidabã	25
5353	Aracaju	25
5354	Arauá	25
5355	Areia Branca	25
5356	Barra dos Coqueiros	25
5357	Boquim	25
5358	Brejo Grande	25
5359	Campo do Brito	25
5360	Canhoba	25
5361	Canindé de São Francisco	25
5362	Capela	25
5363	Carira	25
5364	Carmópolis	25
5365	Cedro de São João	25
5366	Cristinápolis	25
5367	Cumbe	25
5368	Divina Pastora	25
5369	Estância	25
5370	Feira Nova	25
5371	Frei Paulo	25
5372	Gararu	25
5373	General Maynard	25
5374	Gracho Cardoso	25
5375	Ilha das Flores	25
5376	Indiaroba	25
5377	Itabaiana	25
5378	Itabaianinha	25
5379	Itabi	25
5380	Itaporanga dAjuda	25
5381	Japaratuba	25
5382	Japoatã	25
5383	Lagarto	25
5384	Laranjeiras	25
5385	Macambira	25
5386	Malhada dos Bois	25
5387	Malhador	25
5388	Maruim	25
5389	Moita Bonita	25
5390	Monte Alegre de Sergipe	25
5391	Muribeca	25
5392	Neópolis	25
5393	Nossa Senhora Aparecida	25
5394	Nossa Senhora da Glória	25
5395	Nossa Senhora das Dores	25
5396	Nossa Senhora de Lourdes	25
5397	Nossa Senhora do Socorro	25
5398	Pacatuba	25
5399	Pedra Mole	25
5400	Pedrinhas	25
5401	Pinhão	25
5402	Pirambu	25
5403	Poço Redondo	25
5404	Poço Verde	25
5405	Porto da Folha	25
5406	Propriá	25
5407	Riachão do Dantas	25
5408	Riachuelo	25
5409	Ribeirópolis	25
5410	Rosário do Catete	25
5411	Salgado	25
5412	Santa Luzia do Itanhy	25
5413	Santa Rosa de Lima	25
5414	Santana do São Francisco	25
5415	Santo Amaro das Brotas	25
5416	São Cristóvão	25
5417	São Domingos	25
5418	São Francisco	25
5419	São Miguel do Aleixo	25
5420	Simão Dias	25
5421	Siriri	25
5422	Telha	25
5423	Tobias Barreto	25
5424	Tomar do Geru	25
5425	Umbaúba	25
5426	Abreulândia	27
5427	Aguiarnópolis	27
5428	Aliança do Tocantins	27
5429	Almas	27
5430	Alvorada	27
5431	Ananás	27
5432	Angico	27
5433	Aparecida do Rio Negro	27
5434	Aragominas	27
5435	Araguacema	27
5436	Araguaçu	27
5437	Araguaína	27
5438	Araguanã	27
5439	Araguatins	27
5440	Arapoema	27
5441	Arraias	27
5442	Augustinópolis	27
5443	Aurora do Tocantins	27
5444	Axixá do Tocantins	27
5445	Babaçulândia	27
5446	Bandeirantes do Tocantins	27
5447	Barra do Ouro	27
5448	Barrolândia	27
5449	Bernardo Sayão	27
5450	Bom Jesus do Tocantins	27
5451	Brasilândia do Tocantins	27
5452	Brejinho de Nazaré	27
5453	Buriti do Tocantins	27
5454	Cachoeirinha	27
5455	Campos Lindos	27
5456	Cariri do Tocantins	27
5457	Carmolândia	27
5458	Carrasco Bonito	27
5459	Caseara	27
5460	Centenário	27
5461	Chapada da Natividade	27
5462	Chapada de Areia	27
5463	Colinas do Tocantins	27
5464	Colméia	27
5465	Combinado	27
5466	Conceição do Tocantins	27
5467	Couto de Magalhães	27
5468	Cristalândia	27
5469	Crixás do Tocantins	27
5470	Darcinópolis	27
5471	Dianópolis	27
5472	Divinópolis do Tocantins	27
5473	Dois Irmãos do Tocantins	27
5474	Dueré	27
5475	Esperantina	27
5476	Fátima	27
5477	Figueirópolis	27
5478	Filadélfia	27
5479	Formoso do Araguaia	27
5480	Fortaleza do Tabocão	27
5481	Goianorte	27
5482	Goiatins	27
5483	Guaraí	27
5484	Gurupi	27
5485	Ipueiras	27
5486	Itacajá	27
5487	Itaguatins	27
5488	Itapiratins	27
5489	Itaporã do Tocantins	27
5490	Jaú do Tocantins	27
5491	Juarina	27
5492	Lagoa da Confusão	27
5493	Lagoa do Tocantins	27
5494	Lajeado	27
5495	Lavandeira	27
5496	Lizarda	27
5497	Luzinópolis	27
5498	Marianópolis do Tocantins	27
5499	Mateiros	27
5500	Maurilândia do Tocantins	27
5501	Miracema do Tocantins	27
5502	Miranorte	27
5503	Monte do Carmo	27
5504	Monte Santo do Tocantins	27
5505	Muricilândia	27
5506	Natividade	27
5507	Nazaré	27
5508	Nova Olinda	27
5509	Nova Rosalândia	27
5510	Novo Acordo	27
5511	Novo Alegre	27
5512	Novo Jardim	27
5513	Oliveira de Fátima	27
5514	Palmas	27
5515	Palmeirante	27
5516	Palmeiras do Tocantins	27
5517	Palmeirópolis	27
5518	Paraíso do Tocantins	27
5519	Paranã	27
5520	Pau dArco	27
5521	Pedro Afonso	27
5522	Peixe	27
5523	Pequizeiro	27
5524	Pindorama do Tocantins	27
5525	Piraquê	27
5526	Pium	27
5527	Ponte Alta do Bom Jesus	27
5528	Ponte Alta do Tocantins	27
5529	Porto Alegre do Tocantins	27
5530	Porto Nacional	27
5531	Praia Norte	27
5532	Presidente Kennedy	27
5533	Pugmil	27
5534	Recursolândia	27
5535	Riachinho	27
5536	Rio da Conceição	27
5537	Rio dos Bois	27
5538	Rio Sono	27
5539	Sampaio	27
5540	Sandolândia	27
5541	Santa Fé do Araguaia	27
5542	Santa Maria do Tocantins	27
5543	Santa Rita do Tocantins	27
5544	Santa Rosa do Tocantins	27
5545	Santa Tereza do Tocantins	27
5546	Santa Terezinha do Tocantins	27
5547	São Bento do Tocantins	27
5548	São Félix do Tocantins	27
5549	São Miguel do Tocantins	27
5550	São Salvador do Tocantins	27
5551	São Sebastião do Tocantins	27
5552	São Valério da Natividade	27
5553	Silvanópolis	27
5554	Sítio Novo do Tocantins	27
5555	Sucupira	27
5556	Taguatinga	27
5557	Taipas do Tocantins	27
5558	Talismã	27
5559	Tocantínia	27
5560	Tocantinópolis	27
5561	Tupirama	27
5562	Tupiratins	27
5563	Wanderlândia	27
5564	Xambioá	27
\.


--
-- TOC entry 2938 (class 0 OID 16397)
-- Dependencies: 199
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado (id, nome, uf, pais) FROM stdin;
1	Acre	AC	1
2	Alagoas	AL	1
3	Amazonas	AM	1
4	Amapá	AP	1
5	Bahia	BA	1
6	Ceará	CE	1
7	Distrito Federal	DF	1
8	Espírito Santo	ES	1
9	Goiás	GO	1
10	Maranhão	MA	1
11	Minas Gerais	MG	1
12	Mato Grosso do Sul	MS	1
13	Mato Grosso	MT	1
14	Pará	PA	1
15	Paraíba	PB	1
16	Pernambuco	PE	1
17	Piauí	PI	1
18	Paraná	PR	1
19	Rio de Janeiro	RJ	1
20	Rio Grande do Norte	RN	1
21	Rondônia	RO	1
22	Roraima	RR	1
23	Rio Grande do Sul	RS	1
24	Santa Catarina	SC	1
25	Sergipe	SE	1
26	São Paulo	SP	1
27	Tocantins	TO	1
\.


--
-- TOC entry 2936 (class 0 OID 16387)
-- Dependencies: 197
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pais (id, nome, sigla) FROM stdin;
1	Brasil	BR
\.


--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 200
-- Name: cidade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cidade_id_seq', 1, false);


--
-- TOC entry 2953 (class 0 OID 0)
-- Dependencies: 198
-- Name: estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_id_seq', 1, false);


--
-- TOC entry 2954 (class 0 OID 0)
-- Dependencies: 196
-- Name: pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pais_id_seq', 1, false);


--
-- TOC entry 2811 (class 2606 OID 16418)
-- Name: cidade cidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (id);


--
-- TOC entry 2809 (class 2606 OID 16404)
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);


--
-- TOC entry 2807 (class 2606 OID 16394)
-- Name: pais pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id);


--
-- TOC entry 2813 (class 2606 OID 16419)
-- Name: cidade fk_cidade_estado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT fk_cidade_estado FOREIGN KEY (estado) REFERENCES public.estado(id);


--
-- TOC entry 2812 (class 2606 OID 16405)
-- Name: estado fk_estado_pais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT fk_estado_pais FOREIGN KEY (pais) REFERENCES public.pais(id);


-- Completed on 2019-03-07 19:34:45 -03

--
-- PostgreSQL database dump complete
--

