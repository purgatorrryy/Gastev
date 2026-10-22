CREATE TABLE public.Correspondence (
    track_number character varying(50) NOT NULL,
    variety_code integer NOT NULL,
    weight numeric(10, 2),
    length numeric(10, 2),
    width numeric(10, 2),
    height numeric(10, 2),
    sender_code integer NOT NULL,
    mark_sum numeric(10, 2),
    CONSTRAINT shipments_pkey PRIMARY KEY (track_number)
);

CREATE TABLE public.correspondence_types (
    code_type_corr integer NOT NULL,
    name_type_corr character varying(100) NOT NULL,
    package character varying(50) NOT NULL,
    min_weight numeric(10, 2) NOT NULL,
    max_weight numeric(10, 2) NOT NULL,
    min_length numeric(10, 2) NOT NULL,
    min_height numeric(10, 2) NOT NULL,
    max_length numeric(10, 2) NOT NULL,
    max_width numeric(10, 2) NOT NULL,
    max_height numeric(10, 2) NOT NULL,
    CONSTRAINT correspondence_types_pkey PRIMARY KEY (code_type_corr)
);