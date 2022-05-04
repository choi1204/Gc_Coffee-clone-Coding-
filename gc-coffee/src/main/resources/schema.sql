CREATE TABLE products
(
        product_id BINARY(16) PRIMARY KEY,
        product_name VARCHAR(20) NOT NULL,
        category VARCHAR(50) NOT NULL,
        price bigint NOT NULL,
        description VARCHAR(500) DEFAULT NULL,
        created_at DATETIME(6) NOT NULL,
        updated_at DATETIME(6) DEFAULT NULL
);

CREATE TABLE orders
(
    order_id        binary(16) PRIMARY KEY ,
    email           varchar(50) not null ,
    address         varchar(200) not null ,
    postcode        varchar(200) not null ,
    order_status    varchar(50) not null ,
    created_at      datetime(6) not null ,
    updated_at      datetime(6) not null
);

create table order_items
(
    seq         bigint  not null primary key AUTO_INCREMENT,
    order_id    binary(16) not null ,
    product_id  binary(16) not null ,
    category    varchar(50) not null ,
    price       bigint not null ,
    quantity    int not null ,
    created_at  datetime(6) not null ,
    updated_at  datetime(6) default null,
    index (order_id),
    constraint fk_order_items_to_order FOREIGN KEY (order_id) REFERENCES orders (order_id) on delete cascade,
    constraint fk_order_items_to_product foreign key (product_id) references products(product_id)
);