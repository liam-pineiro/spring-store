CREATE TABLE carts
(
    id           BINARY(16) NOT NULL,
    date_created DATE       NOT NULL,
    CONSTRAINT pk_carts PRIMARY KEY (id)
);

CREATE TABLE cart_items
(
    id         BIGINT AUTO_INCREMENT NOT NULL,
    cart_id    BINARY(16)            NOT NULL,
    product_id BIGINT                NOT NULL,
    quantity   INT DEFAULT 1         NOT NULL,
    CONSTRAINT pk_cart_items PRIMARY KEY (id),
    CONSTRAINT cart_items_cart_product_unique UNIQUE (cart_id, product_id),
    CONSTRAINT cart_items_carts_id_fk FOREIGN KEY (cart_id) REFERENCES carts (id) ON DELETE CASCADE,
    CONSTRAINT cart_items_products_id_fk FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE CASCADE
);