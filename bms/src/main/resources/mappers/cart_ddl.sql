use bms;

CREATE TABLE CART(
	CART_CD INT PRIMARY KEY AUTO_INCREMENT,
    MEMBER_ID varchar(20),
    BOOK_CD INT,
    QUANTITY INT 
);