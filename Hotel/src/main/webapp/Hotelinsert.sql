--호텔 데이터 1 - 썸네일(1) - 인천
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '호텔', '인천 시그니엘 호텔', '인천에서 럭셔리한 휴식을 제공하는 호텔입니다.', '032-1234-5678', '010-7777-8888', '레스토랑, 수영장, 비즈니스 센터', 250000,   '인천광역시 중구 해맞이로 1', 'm1.webp,m2.webp,m3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

--호텔 데이터 1 - 디테일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '호텔', '인천 시그니엘 호텔', '인천에서 럭셔리한 휴식을 제공하는 호텔입니다.', '032-1234-5678', '010-7777-8888', '레스토랑, 수영장, 비즈니스 센터', 250000,   '인천광역시 중구 해맞이로 1', 'm4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

--호텔 데이터 1 - 디테일(2) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '호텔', '인천 시그니엘 호텔', '인천에서 럭셔리한 휴식을 제공하는 호텔입니다.', '032-1234-5678', '010-7777-8888', '레스토랑, 수영장, 비즈니스 센터', 250000,   '인천광역시 중구 해맞이로 1', 'm5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

--호텔 데이터 1 - 디테일(3) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '호텔', '인천 시그니엘 호텔', '인천에서 럭셔리한 휴식을 제공하는 호텔입니다.', '032-1234-5678', '010-7777-8888', '레스토랑, 수영장, 비즈니스 센터', 250000,   '인천광역시 중구 해맞이로 1', 'm6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



--모텔 데이터 2 - 썸네일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '모텔', '인천 하늘 모텔', '인천에서 편안한 휴식을 제공하는 모텔입니다.', '032-9999-8888', '010-1234-5678', '주차장, 와이파이, 에어컨', 70000,   '인천광역시 남구 하늘로 5678', 'n1.webp,n2.webp,n3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

--모텔 데이터 2 - 디테일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '모텔', '인천 하늘 모텔', '인천에서 편안한 휴식을 제공하는 모텔입니다.', '032-9999-8888', '010-1234-5678', '주차장, 와이파이, 에어컨', 70000,   '인천광역시 남구 하늘로 5678', 'n4.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);







--모텔 데이터 2 - 디테일(2) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '모텔', '인천 하늘 모텔', '인천에서 편안한 휴식을 제공하는 모텔입니다.', '032-9999-8888', '010-1234-5678', '주차장, 와이파이, 에어컨', 70000,   '인천광역시 남구 하늘로 5678', 'n5.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);


--모텔 데이터 2 - 디테일(3) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '모텔', '인천 하늘 모텔', '인천에서 편안한 휴식을 제공하는 모텔입니다.', '032-9999-8888', '010-1234-5678', '주차장, 와이파이, 에어컨', 70000,   '인천광역시 남구 하늘로 5678', 'n6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 호텔 데이터 3- 썸네일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '호텔', '인천 해변 호텔', '인천 해변에서 편안한 휴식을 제공하는 호텔입니다.', '032-5555-6666', '010-9876-5432', '레스토랑, 수영장, 비즈니스 시설', 180000,   '인천광역시 중구 해변로 5678', 'b1.webp,b2.webp,b3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '호텔', '인천 해변 호텔', '인천 해변에서 편안한 휴식을 제공하는 호텔입니다.', '032-5555-6666', '010-9876-5432', '레스토랑, 수영장, 비즈니스 시설', 180000,   '인천광역시 중구 해변로 5678', 'b4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(2) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '호텔', '인천 해변 호텔', '인천 해변에서 편안한 휴식을 제공하는 호텔입니다.', '032-5555-6666', '010-9876-5432', '레스토랑, 수영장, 비즈니스 시설', 180000,   '인천광역시 중구 해변로 5678', 'b5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(3) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '호텔', '인천 해변 호텔', '인천 해변에서 편안한 휴식을 제공하는 호텔입니다.', '032-5555-6666', '010-9876-5432', '레스토랑, 수영장, 비즈니스 시설', 180000,   '인천광역시 중구 해변로 5678', 'b6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);






-- 리조트 데이터 4 - 썸네일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '인천 시그니처 리조트', '인천에서 편안한 휴식을 제공하는 시그니처 리조트입니다.', '032-1234-5678', '010-9876-5432', '수영장, 스파, 레스토랑', 320000,   '인천광역시 중구 해안로 5678', 'd1.webp,d2.webp,d3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 4 - 디테일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '인천 시그니처 리조트', '인천에서 편안한 휴식을 제공하는 시그니처 리조트입니다.', '032-1234-5678', '010-9876-5432', '수영장, 스파, 레스토랑', 320000,   '인천광역시 중구 해안로 5678', 'd4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 4 - 디테일(2) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '인천 시그니처 리조트', '인천에서 편안한 휴식을 제공하는 시그니처 리조트입니다.', '032-1234-5678', '010-9876-5432', '수영장, 스파, 레스토랑', 320000,   '인천광역시 중구 해안로 5678', 'd5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 4 - 디테일(3) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '인천 시그니처 리조트', '인천에서 편안한 휴식을 제공하는 시그니처 리조트입니다.', '032-1234-5678', '010-9876-5432', '수영장, 스파, 레스토랑', 320000,   '인천광역시 중구 해안로 5678', 'd6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);




-- 펜션 데이터 5 - 썸네일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '인천 해변펜션', '인천 해변가에 위치한 아늑한 펜션입니다.', '032-2222-3333', '010-5678-1234', '바베큐, 주차장, 무선인터넷', 90000,   '인천광역시 남구 해안로 4321', 'f1.webp,f2.webp,f3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 5 - 디테일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '인천 해변펜션', '인천 해변가에 위치한 아늑한 펜션입니다.', '032-2222-3333', '010-5678-1234', '바베큐, 주차장, 무선인터넷', 90000,   '인천광역시 남구 해안로 4321', 'f4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);






-- 펜션 데이터 5 - 디테일(2) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '인천 해변펜션', '인천 해변가에 위치한 아늑한 펜션입니다.', '032-2222-3333', '010-5678-1234', '바베큐, 주차장, 무선인터넷', 90000,   '인천광역시 남구 해안로 4321', 'f5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 5 - 디테일(3) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '인천 해변펜션', '인천 해변가에 위치한 아늑한 펜션입니다.', '032-2222-3333', '010-5678-1234', '바베큐, 주차장, 무선인터넷', 90000,   '인천광역시 남구 해안로 4321', 'f6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 모텔 데이터 6 - 썸네일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '인천 휴식모텔', '인천에서 편안한 휴식을 제공하는 모텔입니다.', '032-3333-4444', '010-6789-1234', '주차장, 와이파이, 미니바', 80000,   '인천광역시 중구 중앙로 5678', 'h1.webp,h2.webp,h3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 6 - 디테일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '인천 휴식모텔', '인천에서 편안한 휴식을 제공하는 모텔입니다.', '032-3333-4444', '010-6789-1234', '주차장, 와이파이, 미니바', 80000,   '인천광역시 중구 중앙로 5678', 'h4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 모텔 데이터 6 - 디테일(2) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '인천 휴식모텔', '인천에서 편안한 휴식을 제공하는 모텔입니다.', '032-3333-4444', '010-6789-1234', '주차장, 와이파이, 미니바', 80000,   '인천광역시 중구 중앙로 5678', 'h5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 모텔 데이터 6 - 디테일(3) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '인천 휴식모텔', '인천에서 편안한 휴식을 제공하는 모텔입니다.', '032-3333-4444', '010-6789-1234', '주차장, 와이파이, 미니바', 80000,   '인천광역시 중구 중앙로 5678', 'h6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);








-- 게스트하우스 데이터 7 - 썸네일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '인천 리버사이드 게스트하우스', '인천에서 휴식을 취할 수 있는 게스트하우스입니다.', '032-7777-8888', '010-1234-5678', '무료 와이파이, 주방 시설, 라운지', 60000,   '인천광역시 남동구 갯벌로 1234', 'e1.webp,e2.webp,e3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 7 - 디테일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '인천 리버사이드 게스트하우스', '인천에서 휴식을 취할 수 있는 게스트하우스입니다.', '032-7777-8888', '010-1234-5678', '무료 와이파이, 주방 시설, 라운지', 60000,   '인천광역시 남동구 갯벌로 1234', 'e4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 7 - 디테일(2) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '인천 리버사이드 게스트하우스', '인천에서 휴식을 취할 수 있는 게스트하우스입니다.', '032-7777-8888', '010-1234-5678', '무료 와이파이, 주방 시설, 라운지', 60000,   '인천광역시 남동구 갯벌로 1234', 'e5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 7 - 디테일(3) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '인천 리버사이드 게스트하우스', '인천에서 휴식을 취할 수 있는 게스트하우스입니다.', '032-7777-8888', '010-1234-5678', '무료 와이파이, 주방 시설, 라운지', 60000,   '인천광역시 남동구 갯벌로 1234', 'e6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 호텔 데이터 8 - 썸네일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '인천 미라지 호텔', '인천에서 편안한 숙박을 제공하는 호텔입니다.', '032-8888-9999', '010-5678-1234', '레스토랑, 수영장, 비즈니스 시설', 150000,   '인천광역시 남구 미라지로 5678', 'o1.webp,o2.webp,o3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 8 - 디테일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '인천 미라지 호텔', '인천에서 편안한 숙박을 제공하는 호텔입니다.', '032-8888-9999', '010-5678-1234', '레스토랑, 수영장, 비즈니스 시설', 150000,   '인천광역시 남구 미라지로 5678', 'o4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);







-- 호텔 데이터 8 - 디테일(2) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '인천 미라지 호텔', '인천에서 편안한 숙박을 제공하는 호텔입니다.', '032-8888-9999', '010-5678-1234', '레스토랑, 수영장, 비즈니스 시설', 150000,   '인천광역시 남구 미라지로 5678', 'o5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 8 - 디테일(3) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '인천 미라지 호텔', '인천에서 편안한 숙박을 제공하는 호텔입니다.', '032-8888-9999', '010-5678-1234', '레스토랑, 수영장, 비즈니스 시설', 150000,   '인천광역시 남구 미라지로 5678', 'o6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 펜션 데이터 9 - 썸네일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '인천 시티뷰 펜션', '인천에서 아름다운 도시 뷰를 감상할 수 있는 펜션입니다.', '032-1234-5678', '010-9876-5432', '주차장, 와이파이, 에어컨', 90000,   '인천광역시 중구 시티뷰로 5678', 'q1.webp,q2.webp,q3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 9 - 디테일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '인천 시티뷰 펜션', '인천에서 아름다운 도시 뷰를 감상할 수 있는 펜션입니다.', '032-1234-5678', '010-9876-5432', '주차장, 와이파이, 에어컨', 90000,   '인천광역시 중구 시티뷰로 5678', 'q4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 펜션 데이터 9 - 디테일(2) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '인천 시티뷰 펜션', '인천에서 아름다운 도시 뷰를 감상할 수 있는 펜션입니다.', '032-1234-5678', '010-9876-5432', '주차장, 와이파이, 에어컨', 90000,   '인천광역시 중구 시티뷰로 5678', 'q5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 9 - 디테일(3) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '인천 시티뷰 펜션', '인천에서 아름다운 도시 뷰를 감상할 수 있는 펜션입니다.', '032-1234-5678', '010-9876-5432', '주차장, 와이파이, 에어컨', 90000,   '인천광역시 중구 시티뷰로 5678', 'q6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);







-- 리조트 데이터 10 - 썸네일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '인천 해수욕장 리조트', '인천의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 리조트입니다.', '032-9876-5432', '010-1234-5678', '수영장, 레스토랑, 피트니스 센터', 150000,   '인천광역시 중구 해변로 1234', 'r1.webp,r2.webp,r3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 10 - 디테일(1) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '인천 해수욕장 리조트', '인천의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 리조트입니다.', '032-9876-5432', '010-1234-5678', '수영장, 레스토랑, 피트니스 센터', 150000,   '인천광역시 중구 해변로 1234', 'r4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 10 - 디테일(2) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '인천 해수욕장 리조트', '인천의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 리조트입니다.', '032-9876-5432', '010-1234-5678', '수영장, 레스토랑, 피트니스 센터', 150000,   '인천광역시 중구 해변로 1234', 'r5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 10 - 디테일(3) - 인천:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '인천 해수욕장 리조트', '인천의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 리조트입니다.', '032-9876-5432', '010-1234-5678', '수영장, 레스토랑, 피트니스 센터', 150000,   '인천광역시 중구 해변로 1234', 'r6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);





-- 모텔 데이터 1 - 썸네일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 하와이 모텔', '제주에서 편안한 휴식을 제공하는 모텔입니다.', '064-1111-2222', '010-1234-5678', '주차장, 와이파이, 에어컨', 80000,   '제주특별자치도 제주시 서해안로 1234', 'a1.webp,a2.webp,a3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);


-- 모텔 데이터 1 - 디테일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 하와이 모텔', '제주에서 편안한 휴식을 제공하는 모텔입니다.', '064-1111-2222', '010-1234-5678', '주차장, 와이파이, 에어컨', 80000,   '제주특별자치도 제주시 서해안로 1234', 'a4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);




-- 모텔 데이터 1 - 디테일(2) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 하와이 모텔', '제주에서 편안한 휴식을 제공하는 모텔입니다.', '064-1111-2222', '010-1234-5678', '주차장, 와이파이, 에어컨', 80000,   '제주특별자치도 제주시 서해안로 1234', 'a5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 모텔 데이터 1 - 디테일(3) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 하와이 모텔', '제주에서 편안한 휴식을 제공하는 모텔입니다.', '064-1111-2222', '010-1234-5678', '주차장, 와이파이, 에어컨', 80000,   '제주특별자치도 제주시 서해안로 1234', 'a6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 호텔 데이터 2 - 썸네일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 호텔 리조트', '제주에서 편안한 휴식을 제공하는 호텔 리조트입니다.', '064-2222-3333', '010-5678-1234', '레스토랑, 수영장, 스파', 150000,   '제주특별자치도 제주시 도령로 5678', 'j1.webp,j2.webp,j3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 호텔 리조트', '제주에서 편안한 휴식을 제공하는 호텔 리조트입니다.', '064-2222-3333', '010-5678-1234', '레스토랑, 수영장, 스파', 150000,   '제주특별자치도 제주시 도령로 5678', 'j4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(2) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 호텔 리조트', '제주에서 편안한 휴식을 제공하는 호텔 리조트입니다.', '064-2222-3333', '010-5678-1234', '레스토랑, 수영장, 스파', 150000,   '제주특별자치도 제주시 도령로 5678', 'j5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(3) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 호텔 리조트', '제주에서 편안한 휴식을 제공하는 호텔 리조트입니다.', '064-2222-3333', '010-5678-1234', '레스토랑, 수영장, 스파', 150000,   '제주특별자치도 제주시 도령로 5678', 'j6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);







-- 호텔 데이터 3 - 썸네일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 호텔 세레나', '제주에서 여유로운 휴식을 즐길 수 있는 호텔입니다.', '064-3333-4444', '010-9876-5432', '수영장, 레스토랑, 비즈니스 시설', 130000,   '제주특별자치도 제주시 제주로 4321', 'i1.webp,i2.webp,i3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 호텔 세레나', '제주에서 여유로운 휴식을 즐길 수 있는 호텔입니다.', '064-3333-4444', '010-9876-5432', '수영장, 레스토랑, 비즈니스 시설', 130000,   '제주특별자치도 제주시 제주로 4321', 'i4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(2) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 호텔 세레나', '제주에서 여유로운 휴식을 즐길 수 있는 호텔입니다.', '064-3333-4444', '010-9876-5432', '수영장, 레스토랑, 비즈니스 시설', 130000,   '제주특별자치도 제주시 제주로 4321', 'i5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(3) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 호텔 세레나', '제주에서 여유로운 휴식을 즐길 수 있는 호텔입니다.', '064-3333-4444', '010-9876-5432', '수영장, 레스토랑, 비즈니스 시설', 130000,   '제주특별자치도 제주시 제주로 4321', 'i6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 리조트 데이터 4 - 썸네일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '제주 라피스 리조트', '제주에서 편안한 휴식을 즐길 수 있는 럭셔리 리조트입니다.', '064-4444-5555', '010-5678-4321', '수영장, 스파, 레스토랑', 230000,   '제주특별자치도 제주시 서해안로 5678', 'n1.webp,n2.webp,n3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 4 - 디테일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '제주 라피스 리조트', '제주에서 편안한 휴식을 즐길 수 있는 럭셔리 리조트입니다.', '064-4444-5555', '010-5678-4321', '수영장, 스파, 레스토랑', 230000,   '제주특별자치도 제주시 서해안로 5678', 'n4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 4 - 디테일(2) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '제주 라피스 리조트', '제주에서 편안한 휴식을 즐길 수 있는 럭셔리 리조트입니다.', '064-4444-5555', '010-5678-4321', '수영장, 스파, 레스토랑', 230000,   '제주특별자치도 제주시 서해안로 5678', 'n5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 4 - 디테일(3) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '제주 라피스 리조트', '제주에서 편안한 휴식을 즐길 수 있는 럭셔리 리조트입니다.', '064-4444-5555', '010-5678-4321', '수영장, 스파, 레스토랑', 230000,   '제주특별자치도 제주시 서해안로 5678', 'n6.webp', hotel_seq.currval-3, 1, '디럭스 스위트', 4, 2, 0, 10, 0);




-- 모텔 데이터 5 - 썸네일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 해변 모텔', '제주의 아름다운 해변을 감상할 수 있는 모텔입니다.', '064-9999-7777', '010-8888-5555', '주차장, 와이파이, 미니바', 85000,   '제주특별자치도 제주시 해안로 567', 'p1.webp,p2.webp,p3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 5 - 디테일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 해변 모텔', '제주의 아름다운 해변을 감상할 수 있는 모텔입니다.', '064-9999-7777', '010-8888-5555', '주차장, 와이파이, 미니바', 85000,   '제주특별자치도 제주시 해안로 567', 'p4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 모텔 데이터 5 - 디테일(2) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 해변 모텔', '제주의 아름다운 해변을 감상할 수 있는 모텔입니다.', '064-9999-7777', '010-8888-5555', '주차장, 와이파이, 미니바', 85000,   '제주특별자치도 제주시 해안로 567', 'p5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 모텔 데이터 5 - 디테일(3) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 해변 모텔', '제주의 아름다운 해변을 감상할 수 있는 모텔입니다.', '064-9999-7777', '010-8888-5555', '주차장, 와이파이, 미니바', 85000,   '제주특별자치도 제주시 해안로 567', 'p6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 펜션 데이터 6 - 썸네일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '제주 풍경 펜션', '자연 풍경을 감상할 수 있는 펜션입니다.', '064-5555-6666', '010-7777-8888', '테라스, 주방, 주차장', 120000,   '제주특별자치도 제주시 도립미로 456', 'o1.webp,o2.webp,o3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);



-- 펜션 데이터 6 - 디테일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '제주 풍경 펜션', '자연 풍경을 감상할 수 있는 펜션입니다.', '064-5555-6666', '010-7777-8888', '테라스, 주방, 주차장', 120000,   '제주특별자치도 제주시 도립미로 456', 'o4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 펜션 데이터 6 - 디테일(2) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '제주 풍경 펜션', '자연 풍경을 감상할 수 있는 펜션입니다.', '064-5555-6666', '010-7777-8888', '테라스, 주방, 주차장', 120000,   '제주특별자치도 제주시 도립미로 456', 'o4.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 6 - 디테일(3) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '제주 풍경 펜션', '자연 풍경을 감상할 수 있는 펜션입니다.', '064-5555-6666', '010-7777-8888', '테라스, 주방, 주차장', 120000,   '제주특별자치도 제주시 도립미로 456', 'o5.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 호텔 데이터 7 - 썸네일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 푸른 바다 호텔', '제주의 아름다운 해변을 바라보는 호텔입니다.', '064-7777-8888', '010-8888-9999', '수영장, 레스토랑, 주차장', 180000,  '제주특별자치도 제주시 해안로 5678', 't1.webp,t2.webp,t3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 7 - 디테일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 푸른 바다 호텔', '제주의 아름다운 해변을 바라보는 호텔입니다.', '064-7777-8888', '010-8888-9999', '수영장, 레스토랑, 주차장', 180000, '제주특별자치도 제주시 해안로 5678', 't4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 호텔 데이터 7 - 디테일(2) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 푸른 바다 호텔', '제주의 아름다운 해변을 바라보는 호텔입니다.', '064-7777-8888', '010-8888-9999', '수영장, 레스토랑, 주차장', 180000, '제주특별자치도 제주시 해안로 5678', 't5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);







-- 호텔 데이터 7 - 디테일(3) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 푸른 바다 호텔', '제주의 아름다운 해변을 바라보는 호텔입니다.', '064-7777-8888', '010-8888-9999', '수영장, 레스토랑, 주차장', 180000, '제주특별자치도 제주시 해안로 5678', 't6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 모텔 데이터 8 - 썸네일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 미미 모텔', '제주에서 편안한 숙박을 제공하는 모텔입니다.', '064-2222-3333', '010-1111-2222', '주차장, 와이파이, 에어컨', 90000, '제주특별자치도 제주시 도남로 567', 's1.webp,s2.webp,s3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 8 - 디테일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 미미 모텔', '제주에서 편안한 숙박을 제공하는 모텔입니다.', '064-2222-3333', '010-1111-2222', '주차장, 와이파이, 에어컨', 90000, '제주특별자치도 제주시 도남로 567', 's4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 모텔 데이터 8 - 디테일(2) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 미미 모텔', '제주에서 편안한 숙박을 제공하는 모텔입니다.', '064-2222-3333', '010-1111-2222', '주차장, 와이파이, 에어컨', 90000, '제주특별자치도 제주시 도남로 567', 's5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 모텔 데이터 8 - 디테일(3) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '제주 미미 모텔', '제주에서 편안한 숙박을 제공하는 모텔입니다.', '064-2222-3333', '010-1111-2222', '주차장, 와이파이, 에어컨', 90000, '제주특별자치도 제주시 도남로 567', 's6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 호텔 데이터 9 - 썸네일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 루나 호텔', '제주에서 아늑한 휴식을 제공하는 호텔입니다.', '064-7777-8888', '010-5678-1234', '레스토랑, 수영장, 비즈니스 센터', 180000, '제주특별자치도 제주시 성산일출로 5678', 'l1.webp,l2.webp,l3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);







-- 호텔 데이터 9 - 디테일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 루나 호텔', '제주에서 아늑한 휴식을 제공하는 호텔입니다.', '064-7777-8888', '010-5678-1234', '레스토랑, 수영장, 비즈니스 센터', 180000, '제주특별자치도 제주시 성산일출로 5678', 'l4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 호텔 데이터 9 - 디테일(2) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 루나 호텔', '제주에서 아늑한 휴식을 제공하는 호텔입니다.', '064-7777-8888', '010-5678-1234', '레스토랑, 수영장, 비즈니스 센터', 180000, '제주특별자치도 제주시 성산일출로 5678', 'l5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 9 - 디테일(3) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 루나 호텔', '제주에서 아늑한 휴식을 제공하는 호텔입니다.', '064-7777-8888', '010-5678-1234', '레스토랑, 수영장, 비즈니스 센터', 180000, '제주특별자치도 제주시 성산일출로 5678', 'l6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 호텔 데이터 10 - 썸네일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 에메랄드 호텔', '제주에서 럭셔리한 휴식을 제공하는 호텔입니다.', '064-8888-9999', '010-1234-5678', '레스토랑, 수영장, 스파', 280000, '제주특별자치도 제주시 중앙로 123', 'm1.webp,m2.webp,m3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 10 - 디테일(1) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 에메랄드 호텔', '제주에서 럭셔리한 휴식을 제공하는 호텔입니다.', '064-8888-9999', '010-1234-5678', '레스토랑, 수영장, 스파', 280000, '제주특별자치도 제주시 중앙로 123', 'm4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 호텔 데이터 10 - 디테일(2) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 에메랄드 호텔', '제주에서 럭셔리한 휴식을 제공하는 호텔입니다.', '064-8888-9999', '010-1234-5678', '레스토랑, 수영장, 스파', 280000, '제주특별자치도 제주시 중앙로 123', 'm5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 10 - 디테일(3) - 제주도
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,    address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '제주 에메랄드 호텔', '제주에서 럭셔리한 휴식을 제공하는 호텔입니다.', '064-8888-9999', '010-1234-5678', '레스토랑, 수영장, 스파', 280000, '제주특별자치도 제주시 중앙로 123', 'm6.webp', hotel_seq.currval-3, 1, '디럭스', 4, 2, 0, 10, 0);





--대구 데이터


-- 펜션 데이터 1 - 썸네일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대구 푸른숲 펜션', '대구의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '대구광역시 유성구 숲속로 1234', 'h1.webp,h2.webp,h3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대구 푸른숲 펜션', '대구의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '대구광역시 유성구 숲속로 1234', 'h4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(2) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대구 푸른숲 펜션', '대구의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '대구광역시 유성구 숲속로 1234', 'h5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(3) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대구 푸른숲 펜션', '대구의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '대구광역시 유성구 숲속로 1234', 'h6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);

-- 호텔 데이터 2 - 썸네일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대구 루첸 호텔', '대구에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '대구광역시 중구 선화로 5678', 'i1.webp,i2.webp,i3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대구 루첸 호텔', '대구에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '대구광역시 중구 선화로 5678', 'i4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(2) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대구 루첸 호텔', '대구에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '대구광역시 중구 선화로 5678', 'i5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(3) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대구 루첸 호텔', '대구에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '대구광역시 중구 선화로 5678', 'i6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);



-- 리조트 데이터 3 - 썸네일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대구 레이크 리조트', '대구의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '대구광역시 유성구 호수로 5678', 'j1.webp,j2.webp,j3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대구 레이크 리조트', '대구의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '대구광역시 유성구 호수로 5678', 'j4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(2) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대구 레이크 리조트', '대구의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '대구광역시 유성구 호수로 5678', 'j5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(3) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대구 레이크 리조트', '대구의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '대구광역시 유성구 호수로 5678', 'j6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);







-- 모텔 데이터 4 - 썸네일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 로맨틱 모텔', '대구에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '대구광역시 중구 로맨틱로 5678', 'k1.webp,k2.webp,k3.webp', hotel_seq.currval, 0, NULL, 2, 1, 0, 10, 0);

-- 모텔 데이터 4 - 디테일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 로맨틱 모텔', '대구에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '대구광역시 중구 로맨틱로 5678', 'k4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 모텔 데이터 4 - 디테일(2) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 로맨틱 모텔', '대구에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '대구광역시 중구 로맨틱로 5678', 'k5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 모텔 데이터 4 - 디테일(3) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 로맨틱 모텔', '대구에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '대구광역시 중구 로맨틱로 5678', 'k6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);





-- 게스트하우스 데이터 5 - 썸네일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '대구 편한 게스트하우스', '대구에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '대구광역시 서구 게스트로 123', 'l1.webp,l2.webp,l3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '대구 편한 게스트하우스', '대구에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '대구광역시 서구 게스트로 123', 'l4.webp', hotel_seq.currval-1, 1, '4인 도미토리', 4, 0, 0, 10, 0);





-- 게스트하우스 데이터 5 - 디테일(2) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '대구 편한 게스트하우스', '대구에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '대구광역시 서구 게스트로 123', 'l5.webp', hotel_seq.currval-2, 1, '2인 개인실', 2, 0, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(3) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '대구 편한 게스트하우스', '대구에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '대구광역시 서구 게스트로 123', 'l6.webp', hotel_seq.currval-3, 1, '여인 전용 도미토리', 6, 0, 0, 10, 0);

-- 호텔 데이터 6 - 썸네일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대구 시티 뷰 호텔', '대구 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '대구광역시 중구 중앙로 4321', 'm1.webp,m2.webp,m3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대구 시티 뷰 호텔', '대구 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '대구광역시 중구 중앙로 4321', 'm4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(2) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대구 시티 뷰 호텔', '대구 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '대구광역시 중구 중앙로 4321', 'm5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(3) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대구 시티 뷰 호텔', '대구 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '대구광역시 중구 중앙로 4321', 'm6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);


-- 모텔 데이터 7 - 썸네일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 로맨틱 모텔', '대구에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '대구광역시 서구 갈마로 5678', 'n1.webp,n2.webp,n3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);




-- 모텔 데이터 7 - 디테일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 로맨틱 모텔', '대구에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '대구광역시 서구 갈마로 5678', 'n4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 모텔 데이터 7 - 디테일(2) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 로맨틱 모텔', '대구에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '대구광역시 서구 갈마로 5678', 'n5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 모텔 데이터 7 - 디테일(3) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 로맨틱 모텔', '대구에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '대구광역시 서구 갈마로 5678', 'n6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);

-- 펜션 데이터 8 - 썸네일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대구 휴식 펜션', '대구에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '대구광역시 유성구 대덕대로 5678', 'o1.webp,o2.webp,o3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대구 휴식 펜션', '대구에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '대구광역시 유성구 대덕대로 5678', 'o4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(2) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대구 휴식 펜션', '대구에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '대구광역시 유성구 대덕대로 5678', 'o5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);





-- 펜션 데이터 8 - 디테일(3) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대구 휴식 펜션', '대구에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '대구광역시 유성구 대덕대로 5678', 'o6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);




-- 리조트 데이터 9 - 썸네일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대구 그린 리조트', '대구에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '대구광역시 유성구 골프로 1234', 'p1.webp,p2.webp,p3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대구 그린 리조트', '대구에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '대구광역시 유성구 골프로 1234', 'p4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(2) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대구 그린 리조트', '대구에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '대구광역시 유성구 골프로 1234', 'p5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(3) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대구 그린 리조트', '대구에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '대구광역시 유성구 골프로 1234', 'p6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 썸네일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 하와이 모텔', '대구에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '대구광역시 중구 중앙로 1234', 'q1.webp,q2.webp,q3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);






-- 모텔 데이터 10 - 디테일(1) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 하와이 모텔', '대구에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '대구광역시 중구 중앙로 1234', 'q4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(2) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 하와이 모텔', '대구에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '대구광역시 중구 중앙로 1234', 'q5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(3) - 대구:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대구 하와이 모텔', '대구에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '대구광역시 중구 중앙로 1234', 'q6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);





-- 대전 데이터

-- 펜션 데이터 1 - 썸네일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대전 푸른숲 펜션', '대전의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '대전광역시 유성구 숲속로 1234', 'e1.webp,e2.webp,e3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대전 푸른숲 펜션', '대전의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '대전광역시 유성구 숲속로 1234', 'e4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(2) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대전 푸른숲 펜션', '대전의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '대전광역시 유성구 숲속로 1234', 'e5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);



-- 펜션 데이터 1 - 디테일(3) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대전 푸른숲 펜션', '대전의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '대전광역시 유성구 숲속로 1234', 'e6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 호텔 데이터 2 - 썸네일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대전 루첸 호텔', '대전에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '대전광역시 중구 선화로 5678', 'f1.webp,f2.webp,f3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대전 루첸 호텔', '대전에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '대전광역시 중구 선화로 5678', 'f4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(2) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대전 루첸 호텔', '대전에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '대전광역시 중구 선화로 5678', 'f5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(3) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대전 루첸 호텔', '대전에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '대전광역시 중구 선화로 5678', 'f6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);




-- 리조트 데이터 3 - 썸네일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대전 레이크 리조트', '대전의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '대전광역시 유성구 호수로 5678', 'g1.webp,g2.webp,g3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);





-- 리조트 데이터 3 - 디테일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대전 레이크 리조트', '대전의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '대전광역시 유성구 호수로 5678', 'g4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(2) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대전 레이크 리조트', '대전의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '대전광역시 유성구 호수로 5678', 'g5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(3) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대전 레이크 리조트', '대전의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '대전광역시 유성구 호수로 5678', 'g6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 모텔 데이터 4 - 썸네일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 로맨틱 모텔', '대전에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '대전광역시 중구 로맨틱로 5678', 'h1.webp,h2.webp,h3.webp', hotel_seq.currval, 0, NULL, 2, 1, 0, 10, 0);

-- 모텔 데이터 4 - 디테일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 로맨틱 모텔', '대전에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '대전광역시 중구 로맨틱로 5678', 'h4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 모텔 데이터 4 - 디테일(2) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 로맨틱 모텔', '대전에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '대전광역시 중구 로맨틱로 5678', 'h5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 모텔 데이터 4 - 디테일(3) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 로맨틱 모텔', '대전에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '대전광역시 중구 로맨틱로 5678', 'h6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);



-- 게스트하우스 데이터 5 - 썸네일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '대전 편한 게스트하우스', '대전에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '대전광역시 서구 게스트로 123', 'i1.webp,i2.webp,i3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '대전 편한 게스트하우스', '대전에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '대전광역시 서구 게스트로 123', 'i4.webp', hotel_seq.currval-1, 1, '4인 도미토리', 4, 0, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(2) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '대전 편한 게스트하우스', '대전에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '대전광역시 서구 게스트로 123', 'i5.webp', hotel_seq.currval-2, 1, '2인 개인실', 2, 0, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(3) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '대전 편한 게스트하우스', '대전에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '대전광역시 서구 게스트로 123', 'i6.webp', hotel_seq.currval-3, 1, '여인 전용 도미토리', 6, 0, 0, 10, 0);


-- 호텔 데이터 6 - 썸네일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대전 시티 뷰 호텔', '대전 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '대전광역시 중구 중앙로 4321', 'j1.webp,j2.webp,j3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대전 시티 뷰 호텔', '대전 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '대전광역시 중구 중앙로 4321', 'j4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(2) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대전 시티 뷰 호텔', '대전 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '대전광역시 중구 중앙로 4321', 'j5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(3) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '대전 시티 뷰 호텔', '대전 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '대전광역시 중구 중앙로 4321', 'j6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);



-- 모텔 데이터 7 - 썸네일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 로맨틱 모텔', '대전에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '대전광역시 서구 갈마로 5678', 'k1.webp,k2.webp,k3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 7 - 디테일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 로맨틱 모텔', '대전에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '대전광역시 서구 갈마로 5678', 'k4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 모텔 데이터 7 - 디테일(2) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 로맨틱 모텔', '대전에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '대전광역시 서구 갈마로 5678', 'k5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 모텔 데이터 7 - 디테일(3) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 로맨틱 모텔', '대전에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '대전광역시 서구 갈마로 5678', 'k6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);


-- 펜션 데이터 8 - 썸네일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대전 휴식 펜션', '대전에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '대전광역시 유성구 대덕대로 5678', 'l1.webp,l2.webp,l3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대전 휴식 펜션', '대전에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '대전광역시 유성구 대덕대로 5678', 'l4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(2) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대전 휴식 펜션', '대전에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '대전광역시 유성구 대덕대로 5678', 'l5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(3) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '대전 휴식 펜션', '대전에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '대전광역시 유성구 대덕대로 5678', 'l6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 리조트 데이터 9 - 썸네일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대전 그린 리조트', '대전에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '대전광역시 유성구 골프로 1234', 'm1.webp,m2.webp,m3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대전 그린 리조트', '대전에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '대전광역시 유성구 골프로 1234', 'm4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(2) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대전 그린 리조트', '대전에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '대전광역시 유성구 골프로 1234', 'm5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(3) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '대전 그린 리조트', '대전에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '대전광역시 유성구 골프로 1234', 'm6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 모텔 데이터 10 - 썸네일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 하와이 모텔', '대전에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '대전광역시 중구 중앙로 1234', 'n1.webp,n2.webp,n3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(1) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 하와이 모텔', '대전에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '대전광역시 중구 중앙로 1234', 'n4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(2) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 하와이 모텔', '대전에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '대전광역시 중구 중앙로 1234', 'n4.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(3) - 대전:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '대전 하와이 모텔', '대전에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '대전광역시 중구 중앙로 1234', 'n5.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);





--부산 데이터 j

-- 데이터 1 - 썸네일   호텔 
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 비치 호텔', '바다 전망이 아름다운 해변가 호텔입니다.', '051-1111-2222', '010-3333-4444', '레스토랑, 수영장, 스파', 450000, '부산 해운대구 해운대로 123', 'j1.webp,j2.webp,j3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 데이터 1 - 디테일(1)  호텔 
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 비치 호텔', '바다 전망이 아름다운 해변가 호텔입니다.', '051-1111-2222', '010-3333-4444', '레스토랑, 수영장, 스파', 450000, '부산 해운대구 해운대로 123', 'j4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 데이터 1 - 디테일(2)   호텔 
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 비치 호텔', '바다 전망이 아름다운 해변가 호텔입니다.', '051-1111-2222', '010-3333-4444', '레스토랑, 수영장, 스파', 450000, '부산 해운대구 해운대로 123', 'j5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);


-- 데이터 1 - 디테일(3) 호텔 
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 비치 호텔', '바다 전망이 아름다운 해변가 호텔입니다.', '051-1111-2222', '010-3333-4444', '레스토랑, 수영장, 스파', 450000, '부산 해운대구 해운대로 123', 'j6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);




-- 데이터 2 - 썸네일   리조트 i
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 휴양 리조트', '해변과 산 속 자연을 즐기는 최고의 휴양 리조트입니다.', '051-7777-8888', '010-5555-6666', '스파, 골프장, 해변 접근', 700000, '부산 해운대구 해운로 456', 'c1.webp,c2.webp,c3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 데이터 2 - 디테일(1)  리조트
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 휴양 리조트', '해변과 산 속 자연을 즐기는 최고의 휴양 리조트입니다.', '051-7777-8888', '010-5555-6666', '스파, 골프장, 해변 접근', 700000, '부산 해운대구 해운로 456', 'c4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 데이터 2 - 디테일(2)   리조트 
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 휴양 리조트', '해변과 산 속 자연을 즐기는 최고의 휴양 리조트입니다.', '051-7777-8888', '010-5555-6666', '스파, 골프장, 해변 접근', 700000, '부산 해운대구 해운로 456', 'c5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 데이터 2 - 디테일(3)    리조트 
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 휴양 리조트', '해변과 산 속 자연을 즐기는 최고의 휴양 리조트입니다.', '051-7777-8888', '010-5555-6666', '스파, 골프장, 해변 접근', 700000, '부산 해운대구 해운로 456', 'c6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);






-- 호텔 데이터 3 - 썸네일  호텔 k
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 센트럴 호텔', '부산 중심에 위치한 현대적인 호텔입니다.', '051-2345-6789', '010-5678-1234', '레스토랑, 라운지, 비즈니스 센터', 480000, '부산 중구 중앙대로 789', 'k1.webp,k2.webp,k3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 센트럴 호텔', '스탠다드 객실', '051-2345-6789', '010-5678-1234', '레스토랑, 라운지, 비즈니스 센터', 480000, '부산 중구 중앙대로 789', 'k4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 센트럴 호텔', '디럭스 객실', '051-2345-6789', '010-5678-1234', '레스토랑, 라운지, 비즈니스 센터', 580000, '부산 중구 중앙대로 789', 'k5.webp', hotel_seq.currval-1, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 센트럴 호텔', '스위트 객실', '051-2345-6789', '010-5678-1234', '레스토랑, 라운지, 비즈니스 센터', 680000, '부산 중구 중앙대로 789', 'k6.webp', hotel_seq.currval-1, 1, '스위트룸', 2, 1, 0, 10, 0);





-- 리조트 데이터 4 - 썸네일 리조트  i
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 비치 리조트', '해변과 오션뷰를 감상할 수 있는 리조트입니다.', '051-3456-7890', '010-1234-5678', '스파, 수영장, 스노클링', 620000, '부산 해운대구 해운로 345', 'l1.webp,l2.webp,l3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 4 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 비치 리조트', '스탠다드 오션뷰 객실', '051-3456-7890', '010-1234-5678', '스파, 수영장, 스노클링', 620000, '부산 해운대구 해운로 345', 'l4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 리조트 데이터 4 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 비치 리조트', '디럭스 오션뷰 객실', '051-3456-7890', '010-1234-5678', '스파, 수영장, 스노클링', 720000, '부산 해운대구 해운로 345', 'l5.webp', hotel_seq.currval-1, 1, '디럭스', 2, 1, 0, 10, 0);

-- 리조트 데이터 4 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount) VALUES  (hotel_seq.nextval, '리조트', '
 부산 비치 리조트', '스위트 오션뷰 객실', '051-3456-7890', '010-1234-5678', '스파, 수영장, 스노클링', 820000, '부산 해운대구 해운로 345', 'l6.webp', hotel_seq.currval-1, 1, '스위트룸', 2, 1, 0, 10, 0);





-- 모텔 데이터 5 - 썸네일  모텔   b 
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '부산 러브모텔', '커플을 위한 특별한 공간, 사랑스러운 분위기의 모텔입니다.', '051-2222-3333', '010-7777-8888', '자쿠지, 미니바, 룸서비스', 90000, '부산 동구 러브로 456', 'b1.webp,b2.webp,b3.webp', hotel_seq.currval, 0, NULL, 2, 0, 0, 10, 0);

-- 모텔 데이터 5 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '부산 러브모텔', '러브 더블 객실', '051-2222-3333', '010-7777-8888', '자쿠지, 미니바, 룸서비스', 90000, '부산 동구 러브로 456', 'b4.webp', hotel_seq.currval-1, 1, '러브 더블', 2, 0, 0, 10, 0);

-- 모텔 데이터 5 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '부산 러브모텔', '스위트 객실', '051-2222-3333', '010-7777-8888', '자쿠지, 미니바, 룸서비스', 120000, '부산 동구 러브로 456', 'b5.webp', hotel_seq.currval-2, 1, '스위트', 2, 0, 0, 10, 0);

-- 모텔 데이터 5 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '부산 러브모텔', '럭셔리 스위트 객실', '051-2222-3333', '010-7777-8888', '자쿠지, 미니바, 룸서비스', 150000, '부산 동구 러브로 456', 'b6.webp', hotel_seq.currval-3, 1, '럭셔리 스위트', 2, 0, 0, 10, 0);






-- 호텔 데이터 6 - 썸네일  호텔 a
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 해외호텔', '한국의 대표적인 해외호텔입니다.', '051-5555-6666', '010-9999-1111', '레스토랑, 수영장, 비즈니스 시설', 350000, '부산 해운대구 해운대로 789', 'a1.webp,a2.webp,a3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 해외호텔', '한국의 대표적인 해외호텔입니다.', '051-5555-6666', '010-9999-1111', '레스토랑, 수영장, 비즈니스 시설', 350000, '부산 해운대구 해운대로 789', 'a4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 해외호텔', '한국의 대표적인 해외호텔입니다.', '051-5555-6666', '010-9999-1111', '레스토랑, 수영장, 비즈니스 시설', 350000, '부산 해운대구 해운대로 789', 'a5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 해외호텔', '한국의 대표적인 해외호텔입니다.', '051-5555-6666', '010-9999-1111', '레스토랑, 수영장, 비즈니스 시설', 350000, '부산 해운대구 해운대로 789', 'a6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);




-- 호텔 데이터 7 - 썸네일  호텔   d
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 해안호텔', '바다를 가깝게 느낄 수 있는 호텔입니다.', '051-7777-7777', '010-8888-8888', '레스토랑, 수영장, 바다 전망', 450000, '부산 해운대구 해운대로 567', 'd1.webp,d2.webp,d3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 7 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 해안호텔', '바다를 가깝게 느낄 수 있는 호텔입니다.', '051-7777-7777', '010-8888-8888', '레스토랑, 수영장, 바다 전망', 450000, '부산 해운대구 해운대로 567', 'd4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 호텔 데이터 7 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 해안호텔', '바다를 가깝게 느낄 수 있는 호텔입니다.', '051-7777-7777', '010-8888-8888', '레스토랑, 수영장, 바다 전망', 450000, '부산 해운대구 해운대로 567', 'd5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 7 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '부산 해안호텔', '바다를 가깝게 느낄 수 있는 호텔입니다.', '051-7777-7777', '010-8888-8888', '레스토랑, 수영장, 바다 전망', 450000, '부산 해운대구 해운대로 567', 'd6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);







-- 게스트하우스 데이터 8 - 썸네일  게스트하우스  f
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '부산 해안 게스트하우스', '바다가 바로 보이는 게스트하우스입니다.', '051-8888-8888', '010-7777-7777', '공용 주방, 무료 와이파이, 바베큐', 30000, '부산 해운대구 해운대로 12345', 'f1.webp,f2.webp,f3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 8 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '부산 해안 게스트하우스', '바다가 바로 보이는 게스트하우스입니다.', '051-8888-8888', '010-7777-7777', '공용 주방, 무료 와이파이, 바베큐', 30000, '부산 해운대구 해운대로 12345', 'f4.webp', hotel_seq.currval-1, 1, '베이직 룸', 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 8 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '부산 해안 게스트하우스', '바다가 바로 보이는 게스트하우스입니다.', '051-8888-8888', '010-7777-7777', '공용 주방, 무료 와이파이, 바베큐', 30000, '부산 해운대구 해운대로 12345', 'f5.webp', hotel_seq.currval-2, 1, '프리미엄 룸', 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 8 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '부산 해안 게스트하우스', '바다가 바로 보이는 게스트하우스입니다.', '051-8888-8888', '010-7777-7777', '공용 주방, 무료 와이파이, 바베큐', 30000, '부산 해운대구 해운대로 12345', 'f6.webp', hotel_seq.currval-3, 1, '패밀리 룸', 4, 2, 0, 10, 0);





-- 리조트 데이터 9 - 썸네일  리조트 g
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 해외 리조트', '해외 스타일의 리조트로 휴식을 즐기세요.', '051-4444-5555', '010-2222-3333', '헬스장, 수영장, 스파', 550000, '부산 해운대구 해운로 9876', 'g1.webp,g2.webp,g3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 해외 리조트', '해외 스타일의 리조트로 휴식을 즐기세요.', '051-4444-5555', '010-2222-3333', '헬스장, 수영장, 스파', 550000, '부산 해운대구 해운로 9876', 'g4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 해외 리조트', '해외 스타일의 리조트로 휴식을 즐기세요.', '051-4444-5555', '010-2222-3333', '헬스장, 수영장, 스파', 550000, '부산 해운대구 해운로 9876', 'g5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '부산 해외 리조트', '해외 스타일의 리조트로 휴식을 즐기세요.', '051-4444-5555', '010-2222-3333', '헬스장, 수영장, 스파', 550000, '부산 해운대구 해운로 9876', 'g6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);




-- 모텔 데이터 10 - 썸네일  모텔  l
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '부산 모텔 10', '휴식 및 숙박을 위한 모텔입니다.', '051-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '부산 중구 중앙대로 1234', 'l1.webp,l2.webp,l3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '부산 모텔 10', '휴식 및 숙박을 위한 모텔입니다.', '051-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '부산 중구 중앙대로 1234', 'l4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '부산 모텔 10', '휴식 및 숙박을 위한 모텔입니다.', '051-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '부산 중구 중앙대로 1234', 'l5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '부산 모텔 10', '휴식 및 숙박을 위한 모텔입니다.', '051-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '부산 중구 중앙대로 1234', 'l6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);







--서울 데이터 
-- 데이터 1 - 썸네일
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '도심 럭셔리 호텔', '도심에서 편안하게 머물 수 있는 럭셔리 호텔입니다.', '02-5555-4444', '010-3333-2222', '레스토랑, 수영장, 피트니스', 400000, '서울 중구 예술로 123', 'o1.webp,o2.webp,o3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 데이터 1 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '도심 럭셔리 호텔', '도심에서 편안하게 머물 수 있는 럭셔리 호텔입니다.', '02-5555-4444', '010-3333-2222', '레스토랑, 수영장, 피트니스', 400000, '서울 중구 예술로 123', 'o4.webp',hotel_seq.currval-1 , 1, '스탠다드', 4, 2, 0, 10, 0);

-- 데이터 1 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count,status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '도심 럭셔리 호텔', '도심에서 편안하게 머물 수 있는 럭셔리 호텔입니다.', '02-5555-4444', '010-3333-2222', '레스토랑, 수영장, 피트니스', 500000, '서울 중구 예술로 123', 'o5.webp',hotel_seq.currval-2, 1, '디럭스', 4, 2, 0 ,10, 0);

-- 데이터 1 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count,status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '도심 럭셔리 호텔', '도심에서 편안하게 머물 수 있는 럭셔리 호텔입니다.', '02-5555-4444', '010-3333-2222', '레스토랑, 수영장, 피트니스', 600000, '서울 중구 예술로 123', 'o6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 데이터 2 - 썸네일
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 호텔', '도심에서 휴식을 취할 수 있는 리조트 호텔입니다.', '02-4444-5555', '010-2222-3333', '스파, 골프, 레스토랑', 350000, '서울 강남 휴양로 456', 'p1.webp,p2.webp,p3.webp', hotel_seq.currval, 0, NULL, 3, 2, 0, 9, 0);

-- 데이터 2 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 호텔', '도심에서 휴식을 취할 수 있는 리조트 호텔입니다.', '02-4444-5555', '010-2222-3333', '스파, 골프, 레스토랑', 350000, '서울 강남 휴양로 456', 'p4.webp',hotel_seq.currval-1 , 1, '스탠다드', 3, 2, 0, 9, 0);

-- 데이터 2 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count,status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 호텔', '도심에서 휴식을 취할 수 있는 리조트 호텔입니다.', '02-4444-5555', '010-2222-3333', '스파, 골프, 레스토랑', 350000, '서울 강남 휴양로 456', 'p5.webp',hotel_seq.currval-2, 1, '디럭스', 3, 2, 0 ,9, 0);

-- 데이터 2 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count,status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 호텔', '도심에서 휴식을 취할 수 있는 리조트 호텔입니다.', '02-4444-5555', '010-2222-3333', '스파, 골프, 레스토랑', 350000, '서울 강남 휴양로 456', 'p6.webp', hotel_seq.currval-3, 1, '스위트룸', 3, 2, 0, 9, 0);



-- 데이터 3 - 썸네일
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 스카이뷰 호텔', '서울의 아름다운 스카이뷰를 제공하는 호텔입니다.', '02-9999-7777', '010-2222-5555', '레스토랑, 라운지, 수영장', 300000, '서울 중구 강남로 789', 'q1.webp,q2.webp,q3.webp', hotel_seq.currval, 0, NULL, 3, 2, 0, 7, 0);

-- 데이터 3 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 스카이뷰 호텔', '서울의 아름다운 스카이뷰를 제공하는 호텔입니다.', '02-9999-7777', '010-2222-5555', '레스토랑, 라운지, 수영장', 300000, '서울 중구 강남로 789', 'q4.webp',hotel_seq.currval-1 , 1, '스탠다드', 3, 2, 0, 7, 0);

-- 데이터 3 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count,status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 스카이뷰 호텔', '서울의 아름다운 스카이뷰를 제공하는 호텔입니다.', '02-9999-7777', '010-2222-5555', '레스토랑, 라운지, 수영장', 300000, '서울 중구 강남로 789', 'q5.webp',hotel_seq.currval-2, 1, '디럭스', 3, 2, 0 ,7, 0);

-- 데이터 3 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count,status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 스카이뷰 호텔', '서울의 아름다운 스카이뷰를 제공하는 호텔입니다.', '02-9999-7777', '010-2222-5555', '레스토랑, 라운지, 수영장', 300000, '서울 중구 강남로 789', 'q6.webp', hotel_seq.currval-3, 1, '스위트룸', 3, 2, 0, 7, 0);





-- 데이터 4 - 썸네일
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 팰리스 호텔', '서울에서 역사와 전통의 아름다움을 제공하는 호텔입니다.', '02-8888-6666', '010-7777-4444', '레스토랑, 스파, 무료 와이파이', 350000, '서울 중구 광화문로 456', 'r1.webp,r2.webp,r3.webp', hotel_seq.currval, 0, NULL, 3, 2, 0, 8, 0);

-- 데이터 4 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 팰리스 호텔', '서울에서 역사와 전통의 아름다움을 제공하는 호텔입니다.', '02-8888-6666', '010-7777-4444', '레스토랑, 스파, 무료 와이파이', 350000, '서울 중구 광화문로 456', 'r4.webp', hotel_seq.currval-1, 1, '스탠다드', 3, 2, 0, 8, 0);

-- 데이터 4 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 팰리스 호텔', '서울에서 역사와 전통의 아름다움을 제공하는 호텔입니다.', '02-8888-6666', '010-7777-4444', '레스토랑, 스파, 무료 와이파이', 350000, '서울 중구 광화문로 456', 'r5.webp', hotel_seq.currval-2, 1, '디럭스', 3, 2, 0, 8, 0);

-- 데이터 4 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 팰리스 호텔', '서울에서 역사와 전통의 아름다움을 제공하는 호텔입니다.', '02-8888-6666', '010-7777-4444', '레스토랑, 스파, 무료 와이파이', 350000, '서울 중구 광화문로 456', 'r6.webp', hotel_seq.currval-3, 1, '스위트룸', 3, 2, 0, 8, 0);



-- 데이터 5 - 썸네일
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 호텔 고려', '시내 중심에 위치한 고급 호텔로 편안한 휴식을 제공합니다.', '02-5555-1234', '010-1111-2222', '레스토랑, 수영장, 비즈니스 센터', 280000, '서울 중구 휴양로 123', 's1.webp,s2.webp,s3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 데이터 5 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 호텔 고려', '시내 중심에 위치한 고급 호텔로 편안한 휴식을 제공합니다.', '02-5555-1234', '010-1111-2222', '레스토랑, 수영장, 비즈니스 센터', 280000, '서울 중구 휴양로 123', 's4.webp',hotel_seq.currval-1 , 1, '스탠다드', 4, 2, 0, 10, 0);

-- 데이터 5 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count,status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 호텔 고려', '시내 중심에 위치한 고급 호텔로 편안한 휴식을 제공합니다.', '02-5555-1234', '010-1111-2222', '레스토랑, 수영장, 비즈니스 센터', 280000, '서울 중구 휴양로 123', 's5.webp',hotel_seq.currval-2, 1, '디럭스', 4, 2, 0 ,10, 0);

-- 데이터 5 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count,status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '서울 호텔 고려', '시내 중심에 위치한 고급 호텔로 편안한 휴식을 제공합니다.', '02-5555-1234', '010-1111-2222', '레스토랑, 수영장, 비즈니스 센터', 280000, '서울 중구 휴양로 123', 's6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 데이터 6 - 썸네일
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '한강 뷰 호텔', '한강을 바라보며 휴식을 취할 수 있는 호텔입니다.', '02-8888-6666', '010-7777-5555', '레스토랑, 테라스, 스파', 380000, '서울 영등포구 여의도로 456', 't1.webp,t2.webp,t3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 12, 0);

-- 데이터 6 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '한강 뷰 호텔', '한강을 바라보며 휴식을 취할 수 있는 호텔입니다.', '02-8888-6666', '010-7777-5555', '레스토랑, 테라스, 스파', 380000, '서울 영등포구 여의도로 456', 't4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 12, 0);

-- 데이터 6 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '한강 뷰 호텔', '한강을 바라보며 휴식을 취할 수 있는 호텔입니다.', '02-8888-6666', '010-7777-5555', '레스토랑, 테라스, 스파', 380000, '서울 영등포구 여의도로 456', 't5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 12, 0);

-- 데이터 6 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '한강 뷰 호텔', '한강을 바라보며 휴식을 취할 수 있는 호텔입니다.', '02-8888-6666', '010-7777-5555', '레스토랑, 테라스, 스파', 380000, '서울 영등포구 여의도로 456', 't6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 12, 0);




-- 데이터 7 - 썸네일
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 오션뷰', '서울에서 눈에 띄는 오션뷰를 자랑하는 리조트로 편안한 휴가를 보내보세요.', '02-1234-5678', '010-9876-5432', '수영장, 스파, 레스토랑', 350000, '서울 강남구 해변로 789', 'a1.webp,a2.webp,a3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 데이터 7 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 오션뷰', '서울에서 눈에 띄는 오션뷰를 자랑하는 리조트로 편안한 휴가를 보내보세요.', '02-1234-5678', '010-9876-5432', '수영장, 스파, 레스토랑', 350000, '서울 강남구 해변로 789', 'a4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 데이터 7 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 오션뷰', '서울에서 눈에 띄는 오션뷰를 자랑하는 리조트로 편안한 휴가를 보내보세요.', '02-1234-5678', '010-9876-5432', '수영장, 스파, 레스토랑', 350000, '서울 강남구 해변로 789', 'a5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 데이터 7 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 오션뷰', '서울에서 눈에 띄는 오션뷰를 자랑하는 리조트로 편안한 휴가를 보내보세요.', '02-1234-5678', '010-9876-5432', '수영장, 스파, 레스토랑', 350000, '서울 강남구 해변로 789', 'a6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);




-- 데이터 8 - 썸네일
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '명동 럭셔리 호텔', '명동 중심에 위치한 럭셔리 호텔로, 쇼핑과 관광 명소와 가깝습니다.', '02-8888-6666', '010-7777-5555', '레스토랑, 스파, 회의실', 500000, '서울 중구 명동길 123', 'b1.webp,b2.webp,b3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 14, 0);

-- 데이터 8 - 디테일(1)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '명동 럭셔리 호텔', '명동 중심에 위치한 럭셔리 호텔로, 쇼핑과 관광 명소와 가깝습니다.', '02-8888-6666', '010-7777-5555', '레스토랑, 스파, 회의실', 500000, '서울 중구 명동길 123', 'b4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 14, 0);


-- 데이터 8 - 디테일(2)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '명동 럭셔리 호텔', '명동 중심에 위치한 럭셔리 호텔로, 쇼핑과 관광 명소와 가깝습니다.', '02-8888-6666', '010-7777-5555', '레스토랑, 스파, 회의실', 500000, '서울 중구 명동길 123', 'b5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 14, 0);

-- 데이터 8 - 디테일(3)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '명동 럭셔리 호텔', '명동 중심에 위치한 럭셔리 호텔로, 쇼핑과 관광 명소와 가깝습니다.', '02-8888-6666', '010-7777-5555', '레스토랑, 스파, 회의실', 500000, '서울 중구 명동길 123', 'b6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 14, 0);




-- 데이터 9 - 썸네일 (호텔)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '호텔 프리미어 서울', '서울에서 편안한 휴가를 보낼 수 있는 최고의 호텔입니다.', '02-1234-5678', '010-9876-5432', '레스토랑, 수영장, 피트니스', 450000, '서울 중구 중림로 456', 'c1.webp,c2.webp,c3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 데이터 9 - 디테일(1) (호텔)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '호텔 프리미어 서울', '서울에서 편안한 휴가를 보낼 수 있는 최고의 호텔입니다.', '02-1234-5678', '010-9876-5432', '레스토랑, 수영장, 피트니스', 450000, '서울 중구 중림로 456', 'c4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 데이터 9 - 디테일(2) (호텔)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '호텔 프리미어 서울', '서울에서 편안한 휴가를 보낼 수 있는 최고의 호텔입니다.', '02-1234-5678', '010-9876-5432', '레스토랑, 수영장, 피트니스', 450000, '서울 중구 중림로 456', 'c5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 데이터 9 - 디테일(3) (호텔)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '호텔 프리미어 서울', '서울에서 편안한 휴가를 보낼 수 있는 최고의 호텔입니다.', '02-1234-5678', '010-9876-5432', '레스토랑, 수영장, 피트니스', 450000, '서울 중구 중림로 456', 'c6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);





-- 데이터 10 - 썸네일 (리조트)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 프리미어', '서울의 아름다운 자연 속에서 휴식을 취할 수 있는 최고의 리조트입니다.', '02-3333-4444', '010-5555-6666', '스파, 골프장, 레스토랑', 600000, '서울 강남 언주로 789', 'd1.webp,d2.webp,d3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 데이터 10 - 디테일(1) (리조트)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 프리미어', '서울의 아름다운 자연 속에서 휴식을 취할 수 있는 최고의 리조트입니다.', '02-3333-4444', '010-5555-6666', '스파, 골프장, 레스토랑', 600000, '서울 강남 언주로 789', 'd4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 데이터 10 - 디테일(2) (리조트)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 프리미어', '서울의 아름다운 자연 속에서 휴식을 취할 수 있는 최고의 리조트입니다.', '02-3333-4444', '010-5555-6666', '스파, 골프장, 레스토랑', 600000, '서울 강남 언주로 789', 'd5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 데이터 10 - 디테일(3) (리조트)
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '서울 리조트 프리미어', '서울의 아름다운 자연 속에서 휴식을 취할 수 있는 최고의 리조트입니다.', '02-3333-4444', '010-5555-6666', '스파, 골프장, 레스토랑', 600000, '서울 강남 언주로 789', 'd6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


--속초
-- 펜션 데이터 1 - 썸네일(1) - 속초: m
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '속초 푸른숲 펜션', '속초의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '속초시 중구 숲속로 1234', 'm1.webp,m2.webp,m3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(1) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '속초 푸른숲 펜션', '속초의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '속초시 중구 숲속로 1234', 'm4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(2) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '속초 푸른숲 펜션', '속초의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '속초시 중구 숲속로 1234', 'm5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(3) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '속초 푸른숲 펜션', '속초의 아름다운 자연 속에서 즐기는 조용한 숙박을 제공하는 펜션입니다.', '042-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 120000, '속초시 중구 숲속로 1234', 'm6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);





-- 호텔 데이터 2 - 썸네일(1) - 속초:  p
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '속초 루첸 호텔', '속초에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '속초시 중구 선화로 5678', 'p1.webp,p2.webp,p3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(1) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '속초 루첸 호텔', '속초에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '속초시 중구 선화로 5678', 'p4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(2) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '속초 루첸 호텔', '속초에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '속초시 중구 선화로 5678', 'p5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(3) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '속초 루첸 호텔', '속초에서 편안하고 모던한 분위기를 즐길 수 있는 호텔입니다.', '042-9876-5432', '010-1234-5678', '주차장, 레스토랑, 비즈니스 센터', 180000, '속초시 중구 선화로 5678', 'p6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);



-- 리조트 데이터 3 - 썸네일(1) - 속초:o
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '속초 레이크 리조트', '속초의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '속초시 중구 호수로 5678', 'o1.webp,o2.webp,o3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(1) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '속초 레이크 리조트', '속초의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '속초시 중구 호수로 5678', 'o4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(2) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '속초 레이크 리조트', '속초의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '속초시 중구 호수로 5678', 'o5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(3) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '속초 레이크 리조트', '속초의 아름다운 호수를 품은 리조트에서 편안한 휴식을 즐기세요.', '042-5555-6666', '010-7777-8888', '수영장, 스파, 골프장', 250000, '속초시 중구 호수로 5678', 'o6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 모텔 데이터 4 - 썸네일(1) - 속초:n
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 로맨틱 모텔', '속초에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '속초시 중구 로맨틱로 5678', 'n1.webp,n2.webp,n3.webp', hotel_seq.currval, 0, NULL, 2, 1, 0, 10, 0);

-- 모텔 데이터 4 - 디테일(1) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 로맨틱 모텔', '속초에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '속초시 중구 로맨틱로 5678', 'n4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 모텔 데이터 4 - 디테일(2) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 로맨틱 모텔', '속초에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '속초시 중구 로맨틱로 5678', 'n5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 모텔 데이터 4 - 디테일(3) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 로맨틱 모텔', '속초에서 로맨틱한 시간을 보낼 수 있는 모텔입니다.', '042-9876-5432', '010-1234-5678', '무료 주차, 와이파이, 스파 욕조', 90000, '속초시 중구 로맨틱로 5678', 'n6.webp', hotel_seq.currval-3, 1, '디럭스', 2, 1, 0, 10, 0);


-- 게스트하우스 데이터 5 - 썸네일(1) - 속초: q
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '속초 편한 게스트하우스', '속초에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '속초시 중구 게스트로 123', 'q1.webp,q2.webp,q3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(1) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '속초 편한 게스트하우스', '속초에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '속초시 중구 게스트로 123', 'q4.webp', hotel_seq.currval-1, 1, '4인 도미토리', 4, 0, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(2) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '속초 편한 게스트하우스', '속초에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '속초시 중구 게스트로 123', 'q5.webp', hotel_seq.currval-2, 1, '2인 개인실', 2, 0, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(3) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '속초 편한 게스트하우스', '속초에서 편안한 게스트하우스에서의 숙박을 즐기세요.', '042-5555-5555', '010-9876-5432', '무료 와이파이, 공용 주방, 라운지', 30000, '속초시 중구 게스트로 123', 'q6.webp', hotel_seq.currval-3, 1, '여인 전용 도미토리', 6, 0, 0, 10, 0);




-- 호텔 데이터 6 - 썸네일(1) - 속초: s
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '속초 시티 뷰 호텔', '속초 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '속초시 중구 중앙로 4321', 's1.webp,s2.webps3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(1) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '속초 시티 뷰 호텔', '속초 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '속초시 중구 중앙로 4321', 's4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(2) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '속초 시티 뷰 호텔', '속초 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '속초시 중구 중앙로 4321', 's5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 6 - 디테일(3) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '속초 시티 뷰 호텔', '속초 시내에서 멋진 도시 뷰를 감상할 수 있는 호텔입니다.', '042-7777-8888', '010-5555-6666', '레스토랑, 피트니스 센터, 비즈니스 센터', 150000, '속초시 중구 중앙로 4321', 's6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);



-- 모텔 데이터 7 - 썸네일(1) - 속초: a
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 로맨틱 모텔', '속초에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '속초시 중구 갈마로 5678', 'a1.webp,a2.webp,a3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 7 - 디테일(1) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 로맨틱 모텔', '속초에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '속초시 중구 갈마로 5678', 'a4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 모텔 데이터 7 - 디테일(2) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 로맨틱 모텔', '속초에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '속초시 중구 갈마로 5678', 'a5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 모텔 데이터 7 - 디테일(3) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 로맨틱 모텔', '속초에서 로맨틱한 분위기를 느낄 수 있는 모텔입니다.', '042-3333-4444', '010-7777-8888', '주차장, 와이파이, 스파 욕조', 90000, '속초시 중구 갈마로 5678', 'a6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);


-- 펜션 데이터 8 - 썸네일(1) - 속초:b
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '속초 휴식 펜션', '속초에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '속초시 중구 대덕대로 5678', 'b1.webp,b2.webp,b3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(1) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '속초 휴식 펜션', '속초에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '속초시 중구 대덕대로 5678', 'b5.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(2) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '속초 휴식 펜션', '속초에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '속초시 중구 대덕대로 5678', 'b5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(3) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '속초 휴식 펜션', '속초에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '042-4444-5555', '010-8888-9999', '주차장, 와이파이, 바베큐 시설', 120000, '속초시 중구 대덕대로 5678', 'b6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 리조트 데이터 9 - 썸네일(1) - 속초:c
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '속초 그린 리조트', '속초에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '속초시 중구 골프로 1234', 'c1.webp,c2.webp,c3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(1) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '속초 그린 리조트', '속초에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '속초시 중구 골프로 1234', 'c4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(2) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '속초 그린 리조트', '속초에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '속초시 중구 골프로 1234', 'c5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 9 - 디테일(3) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '속초 그린 리조트', '속초에서 자연 속에서 편안한 휴식을 제공하는 리조트입니다.', '042-7777-8888', '010-5678-9876', '수영장, 골프장, 스파', 200000, '속초시 중구 골프로 1234', 'c6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);




-- 모텔 데이터 10 - 썸네일(1) - 속초: e
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 하와이 모텔', '속초에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '속초시 중구 중앙로 1234', 'e1.webp,e2.webp,e3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(1) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 하와이 모텔', '속초에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '속초시 중구 중앙로 1234', 'e4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(2) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 하와이 모텔', '속초에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '속초시 중구 중앙로 1234', 'e5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 모텔 데이터 10 - 디테일(3) - 속초:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '속초 하와이 모텔', '속초에서 휴식 및 숙박을 위한 모텔입니다.', '042-5555-5555', '010-1000-1000', '주차장, 와이파이, 미니바', 70000, '속초시 중구 중앙로 1234', 'e6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);




-- 호텔 데이터 1 - 썸네일(1) - 수원:  d
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 그랜드 호텔', '수원에서 편안한 숙박을 제공하는 그랜드 호텔입니다.', '031-1234-5678', '010-9999-8888', '레스토랑, 라운지, 피트니스 센터', 220000, '경기도 수원시 광교로 1234', 'd1.webp,d2.d3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 1 - 디테일(1) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 그랜드 호텔', '수원에서 편안한 숙박을 제공하는 그랜드 호텔입니다.', '031-1234-5678', '010-9999-8888', '레스토랑, 라운지, 피트니스 센터', 220000, '경기도 수원시 광교로 1234', 'd4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 1 - 디테일(2) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 그랜드 호텔', '수원에서 편안한 숙박을 제공하는 그랜드 호텔입니다.', '031-1234-5678', '010-9999-8888', '레스토랑, 라운지, 피트니스 센터', 220000, '경기도 수원시 광교로 1234', 'd5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 1 - 디테일(3) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 그랜드 호텔', '수원에서 편안한 숙박을 제공하는 그랜드 호텔입니다.', '031-1234-5678', '010-9999-8888', '레스토랑, 라운지, 피트니스 센터', 220000, '경기도 수원시 광교로 1234', 'd6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);






-- 호텔 데이터 2 - 썸네일(1) - 수원:g
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 더 베이 호텔', '수원에서 럭셔리한 휴식을 제공하는 호텔입니다.', '031-9876-5432', '010-5555-6666', '레스토랑, 수영장, 사우나', 250000, '경기도 수원시 권선구 경수대로 5678', 'g1.webp,g2.webp,g3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(1) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 더 베이 호텔', '수원에서 럭셔리한 휴식을 제공하는 호텔입니다.', '031-9876-5432', '010-5555-6666', '레스토랑, 수영장, 사우나', 250000, '경기도 수원시 권선구 경수대로 5678', 'g4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(2) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 더 베이 호텔', '수원에서 럭셔리한 휴식을 제공하는 호텔입니다.', '031-9876-5432', '010-5555-6666', '레스토랑, 수영장, 사우나', 250000, '경기도 수원시 권선구 경수대로 5678', 'g5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(3) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 더 베이 호텔', '수원에서 럭셔리한 휴식을 제공하는 호텔입니다.', '031-9876-5432', '010-5555-6666', '레스토랑, 수영장, 사우나', 250000, '경기도 수원시 권선구 경수대로 5678', 'g6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);



-- 리조트 데이터 3 - 썸네일(1) - 수원:e
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '리조트', '수원 루나 리조트', '수원에서 자연과 조화로운 휴식을 즐길 수 있는 리조트입니다.', '031-7777-8888', '010-8888-9999', '골프장, 스파, 레스토랑', 250000, '경기도 수원시 루나로 5678', 'e1.webp,e2.webp,e3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(1) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '리조트', '수원 루나 리조트', '수원에서 자연과 조화로운 휴식을 즐길 수 있는 리조트입니다.', '031-7777-8888', '010-8888-9999', '골프장, 스파, 레스토랑', 250000, '경기도 수원시 루나로 5678', 'e4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(2) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '리조트', '수원 루나 리조트', '수원에서 자연과 조화로운 휴식을 즐길 수 있는 리조트입니다.', '031-7777-8888', '010-8888-9999', '골프장, 스파, 레스토랑', 250000, '경기도 수원시 루나로 5678', 'e5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 리조트 데이터 3 - 디테일(3) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
(hotel_seq.nextval, '리조트', '수원 루나 리조트', '수원에서 자연과 조화로운 휴식을 즐길 수 있는 리조트입니다.', '031-7777-8888', '010-8888-9999', '골프장, 스파, 레스토랑', 250000, '경기도 수원시 루나로 5678', 'e6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);




--호텔 데이터 4 - 썸네일(1): j
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 스타 호텔', '수원에서 럭셔리한 휴식을 제공하는 스타 호텔입니다.', '031-9876-5432', '010-5678-1234', '레스토랑, 수영장, 사우나', 300000, '경기도 수원시 중구 스타로 1234', 'j1.webp,j2.webp,j3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);


--호텔 데이터 4 - 디테일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 스타 호텔', '수원에서 럭셔리한 휴식을 제공하는 스타 호텔입니다.', '031-9876-5432', '010-5678-1234', '레스토랑, 수영장, 사우나', 300000, '경기도 수원시 중구 스타로 1234', 'j4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

--호텔 데이터 4 - 디테일(2):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 스타 호텔', '수원에서 럭셔리한 휴식을 제공하는 스타 호텔입니다.', '031-9876-5432', '010-5678-1234', '레스토랑, 수영장, 사우나', 300000, '경기도 수원시 중구 스타로 1234', 'j5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);


--호텔 데이터 4 - 디테일(3):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 스타 호텔', '수원에서 럭셔리한 휴식을 제공하는 스타 호텔입니다.', '031-9876-5432', '010-5678-1234', '레스토랑, 수영장, 사우나', 300000, '경기도 수원시 중구 스타로 1234', 'j6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);




-- 게스트하우스 데이터 5 - 썸네일(1) - 수원:l
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '수원 하우스', '수원에서 편안한 게스트하우스에서의 투숙을 경험하세요.', '031-7777-8888', '010-8888-9999', '무료 와이파이, 공용 주방, 무료 아침 식사', 70000, '경기도 수원시 팔달구 게스트로 5678', 'l1.webp,l2.webp,l3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(1) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '수원 하우스', '수원에서 편안한 게스트하우스에서의 투숙을 경험하세요.', '031-7777-8888', '010-8888-9999', '무료 와이파이, 공용 주방, 무료 아침 식사', 70000, '경기도 수원시 팔달구 게스트로 5678', 'l4.webp', hotel_seq.currval-1, 1, '스탠다드', 6, 2, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(2) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '수원 하우스', '수원에서 편안한 게스트하우스에서의 투숙을 경험하세요.', '031-7777-8888', '010-8888-9999', '무료 와이파이, 공용 주방, 무료 아침 식사', 70000, '경기도 수원시 팔달구 게스트로 5678', 'l5.webp', hotel_seq.currval-2, 1, '더블', 2, 1, 0, 10, 0);

-- 게스트하우스 데이터 5 - 디테일(3) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '수원 하우스', '수원에서 편안한 게스트하우스에서의 투숙을 경험하세요.', '031-7777-8888', '010-8888-9999', '무료 와이파이, 공용 주방, 무료 아침 식사', 70000, '경기도 수원시 팔달구 게스트로 5678', 'l6.webp', hotel_seq.currval-3, 1, '스위트', 4, 2, 0, 10, 0);




-- 모텔 데이터 6 - 썸네일(1) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '수원 팰리스 모텔', '수원에서 휴식을 취할 수 있는 모텔입니다.', '031-4444-5555', '010-5555-4444', '주차장, 와이파이, 미니바', 80000, '경기도 수원시 영통구 모텔로 5678', 'k1.webp,k2.webp,k3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 6 - 디테일(1) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '수원 팰리스 모텔', '수원에서 휴식을 취할 수 있는 모텔입니다.', '031-4444-5555', '010-5555-4444', '주차장, 와이파이, 미니바', 80000, '경기도 수원시 영통구 모텔로 5678', 'k4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 모텔 데이터 6 - 디테일(2) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '수원 팰리스 모텔', '수원에서 휴식을 취할 수 있는 모텔입니다.', '031-4444-5555', '010-5555-4444', '주차장, 와이파이, 미니바', 80000, '경기도 수원시 영통구 모텔로 5678', 'k5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 모텔 데이터 6 - 디테일(3) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '수원 팰리스 모텔', '수원에서 휴식을 취할 수 있는 모텔입니다.', '031-4444-5555', '010-5555-4444', '주차장, 와이파이, 미니바', 80000, '경기도 수원시 영통구 모텔로 5678', 'k6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);





-- 펜션 데이터 7 - 썸네일(1) - 수원:h
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '수원 힐링 펜션', '자연 속에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '031-7777-8888', '010-8888-7777', '바베큐, 캠프파이어, 풀장', 120000, '경기도 수원시 펜션길 1234', 'h1.webp,h2.webp,h3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 7 - 디테일(1) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '수원 힐링 펜션', '자연 속에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '031-7777-8888', '010-8888-7777', '바베큐, 캠프파이어, 풀장', 120000, '경기도 수원시 펜션길 1234', 'h4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 펜션 데이터 7 - 디테일(2) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '수원 힐링 펜션', '자연 속에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '031-7777-8888', '010-8888-7777', '바베큐, 캠프파이어, 풀장', 120000, '경기도 수원시 펜션길 1234', 'h5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 펜션 데이터 7 - 디테일(3) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '수원 힐링 펜션', '자연 속에서 편안한 휴식을 즐길 수 있는 펜션입니다.', '031-7777-8888', '010-8888-7777', '바베큐, 캠프파이어, 풀장', 120000, '경기도 수원시 펜션길 1234', 'h6.webp', hotel_seq.currval-3, 1, '패밀리', 2, 1, 0, 10, 0);




-- 펜션 데이터 8 - 썸네일(1) - 수원:i
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '수원 자연 휴양 펜션', '자연 속에서 휴양과 힐링을 즐길 수 있는 펜션입니다.', '031-3333-4444', '010-4444-3333', '바베큐, 피크닉, 야외 수영장', 130000, '경기도 수원시 자연길 5678', 'i1.webp,i2.webp,i3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(1) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '수원 자연 휴양 펜션', '자연 속에서 휴양과 힐링을 즐길 수 있는 펜션입니다.', '031-3333-4444', '010-4444-3333', '바베큐, 피크닉, 야외 수영장', 130000, '경기도 수원시 자연길 5678', 'i4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(2) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '수원 자연 휴양 펜션', '자연 속에서 휴양과 힐링을 즐길 수 있는 펜션입니다.', '031-3333-4444', '010-4444-3333', '바베큐, 피크닉, 야외 수영장', 130000, '경기도 수원시 자연길 5678', 'i5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 펜션 데이터 8 - 디테일(3) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '수원 자연 휴양 펜션', '자연 속에서 휴양과 힐링을 즐길 수 있는 펜션입니다.', '031-3333-4444', '010-4444-3333', '바베큐, 피크닉, 야외 수영장', 130000, '경기도 수원시 자연길 5678', 'i6.webp', hotel_seq.currval-3, 1, '패밀리', 2, 1, 0, 10, 0);



-- 호텔 데이터 9 - 썸네일(1) - 수원: a
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 클래식 호텔', '수원에서 품격 있는 휴식을 제공하는 클래식 호텔입니다.', '031-5555-6666', '010-7777-8888', '레스토랑, 바, 비즈니스 센터', 250000, '경기도 수원시 신화로 5678', 'a1.webp,a2.webp,a3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 9 - 디테일(1) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 클래식 호텔', '수원에서 품격 있는 휴식을 제공하는 클래식 호텔입니다.', '031-5555-6666', '010-7777-8888', '레스토랑, 바, 비즈니스 센터', 250000, '경기도 수원시 신화로 5678', 'a4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 9 - 디테일(2) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 클래식 호텔', '수원에서 품격 있는 휴식을 제공하는 클래식 호텔입니다.', '031-5555-6666', '010-7777-8888', '레스토랑, 바, 비즈니스 센터', 250000, '경기도 수원시 신화로 5678', 'a5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 9 - 디테일(3) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 클래식 호텔', '수원에서 품격 있는 휴식을 제공하는 클래식 호텔입니다.', '031-5555-6666', '010-7777-8888', '레스토랑, 바, 비즈니스 센터', 250000, '경기도 수원시 신화로 5678', 'a6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);



-- 호텔 데이터 10 - 썸네일(1) - 수원: c
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 팰리스 호텔', '수원에서 품격 있는 휴식을 제공하는 팰리스 호텔입니다.', '031-1234-5678', '010-9999-8888', '레스토랑, 바, 비즈니스 센터', 230000, '경기도 수원시 장안구 파장로 5678', 'c1.webp,c2.webp,c3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 10 - 디테일(1) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 팰리스 호텔', '수원에서 품격 있는 휴식을 제공하는 팰리스 호텔입니다.', '031-1234-5678', '010-9999-8888', '레스토랑, 바, 비즈니스 센터', 230000, '경기도 수원시 장안구 파장로 5678', 'c4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 10 - 디테일(2) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 팰리스 호텔', '수원에서 품격 있는 휴식을 제공하는 팰리스 호텔입니다.', '031-1234-5678', '010-9999-8888', '레스토랑, 바, 비즈니스 센터', 230000, '경기도 수원시 장안구 파장로 5678', 'c5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 10 - 디테일(3) - 수원:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '수원 팰리스 호텔', '수원에서 품격 있는 휴식을 제공하는 팰리스 호텔입니다.', '031-1234-5678', '010-9999-8888', '레스토랑, 바, 비즈니스 센터', 230000, '경기도 수원시 장안구 파장로 5678', 'c6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);


-- 리조트 데이터 1 - 썸네일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 해변 리조트', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 리조트입니다.', '061-9876-5432', '010-1234-5678', '수영장, 레스토랑, 스파', 180000, '전라남도 여수시 해변로 1234', 'c1.webp,c2.webp,c3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 1 - 디테일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 해변 리조트', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 리조트입니다.', '061-9876-5432', '010-1234-5678', '수영장, 레스토랑, 스파', 180000, '전라남도 여수시 해변로 1234', 'c4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 1 - 디테일(2) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 해변 리조트', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 리조트입니다.', '061-9876-5432', '010-1234-5678', '수영장, 레스토랑, 스파', 180000, '전라남도 여수시 해변로 1234', 'c5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 1 - 디테일(3) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 해변 리조트', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 리조트입니다.', '061-9876-5432', '010-1234-5678', '수영장, 레스토랑, 스파', 180000, '전라남도 여수시 해변로 1234', 'c6t.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 모텔 데이터 2 - 썸네일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '여수 해변 모텔', '여수에서 편안한 휴식을 즐길 수 있는 모텔입니다.', '061-2222-3333', '010-9876-5432', '주차장, 와이파이, 미니바', 80000, '전라남도 여수시 모텔로 5678', 'd1.webp,d2.webp,d3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 2 - 디테일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '여수 해변 모텔', '여수에서 편안한 휴식을 즐길 수 있는 모텔입니다.', '061-2222-3333', '010-9876-5432', '주차장, 와이파이, 미니바', 80000, '전라남도 여수시 모텔로 5678', 'd4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 모텔 데이터 2 - 디테일(2) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '여수 해변 모텔', '여수에서 편안한 휴식을 즐길 수 있는 모텔입니다.', '061-2222-3333', '010-9876-5432', '주차장, 와이파이, 미니바', 80000, '전라남도 여수시 모텔로 5678', 'd5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 모텔 데이터 2 - 디테일(3) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '여수 해변 모텔', '여수에서 편안한 휴식을 즐길 수 있는 모텔입니다.', '061-2222-3333', '010-9876-5432', '주차장, 와이파이, 미니바', 80000, '전라남도 여수시 모텔로 5678', 'd6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 호텔 데이터 3 - 썸네일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 바다호텔', '여수에서 바다 전망을 감상하며 휴식을 즐길 수 있는 호텔입니다.', '061-3333-4444', '010-9876-5678', '레스토랑, 수영장, 비즈니스 시설', 200000, '전라남도 여수시 바다로 1234', 'e1.webp,e2.webp,e3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 바다호텔', '여수에서 바다 전망을 감상하며 휴식을 즐길 수 있는 호텔입니다.', '061-3333-4444', '010-9876-5678', '레스토랑, 수영장, 비즈니스 시설', 200000, '전라남도 여수시 바다로 1234', 'e4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(2) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 바다호텔', '여수에서 바다 전망을 감상하며 휴식을 즐길 수 있는 호텔입니다.', '061-3333-4444', '010-9876-5678', '레스토랑, 수영장, 비즈니스 시설', 200000, '전라남도 여수시 바다로 1234', 'e5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 3 - 디테일(3) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 바다호텔', '여수에서 바다 전망을 감상하며 휴식을 즐길 수 있는 호텔입니다.', '061-3333-4444', '010-9876-5678', '레스토랑, 수영장, 비즈니스 시설', 200000, '전라남도 여수시 바다로 1234', 'e6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 펜션 데이터 4 - 썸네일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '여수 해변 펜션', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 펜션입니다.', '061-7777-8888', '010-4321-8765', '바베큐, 주방, 에어컨', 120000, '전라남도 여수시 해변로 4321', 'f1.webp,f2.webp,f3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 4 - 디테일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '여수 해변 펜션', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 펜션입니다.', '061-7777-8888', '010-4321-8765', '바베큐, 주방, 에어컨', 120000, '전라남도 여수시 해변로 4321', 'f4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 펜션 데이터 4 - 디테일(2) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '여수 해변 펜션', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 펜션입니다.', '061-7777-8888', '010-4321-8765', '바베큐, 주방, 에어컨', 120000, '전라남도 여수시 해변로 4321', 'f5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 4 - 디테일(3) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '여수 해변 펜션', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 펜션입니다.', '061-7777-8888', '010-4321-8765', '바베큐, 주방, 에어컨', 120000, '전라남도 여수시 해변로 4321', 'f6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 호텔 데이터 5 - 썸네일 - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 해변 호텔', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 호텔입니다.', '061-1234-5678', '010-9876-5432', '수영장, 레스토랑, 비즈니스 시설', 250000, '전라남도 여수시 해변로 5678', 'g1.webp,g2.webp,g3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 5 - 디테일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 해변 호텔', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 호텔입니다.', '061-1234-5678', '010-9876-5432', '수영장, 레스토랑, 비즈니스 시설', 250000, '전라남도 여수시 해변로 5678', 'g4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 호텔 데이터 5 - 디테일(2) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 해변 호텔', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 호텔입니다.', '061-1234-5678', '010-9876-5432', '수영장, 레스토랑, 비즈니스 시설', 250000, '전라남도 여수시 해변로 5678', 'g5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 5 - 디테일(3) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 해변 호텔', '여수의 아름다운 해변을 감상하며 편안한 휴식을 즐길 수 있는 호텔입니다.', '061-1234-5678', '010-9876-5432', '수영장, 레스토랑, 비즈니스 시설', 250000, '전라남도 여수시 해변로 5678', 'g6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 리조트 데이터 6 - 썸네일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 바다 리조트', '여수 바다를 품고 자리한 휴식을 제공하는 리조트입니다.', '061-8765-4321', '010-4321-9876', '수영장, 레스토랑, 스파', 220000, '전라남도 여수시 바다로 9876', 'h1.webp,h2.webp,h3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 6 - 디테일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 바다 리조트', '여수 바다를 품고 자리한 휴식을 제공하는 리조트입니다.', '061-8765-4321', '010-4321-9876', '수영장, 레스토랑, 스파', 220000, '전라남도 여수시 바다로 9876', 'h4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 리조트 데이터 6 - 디테일(2) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 바다 리조트', '여수 바다를 품고 자리한 휴식을 제공하는 리조트입니다.', '061-8765-4321', '010-4321-9876', '수영장, 레스토랑, 스파', 220000, '전라남도 여수시 바다로 9876', 'h5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 리조트 데이터 6 - 디테일(3) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 바다 리조트', '여수 바다를 품고 자리한 휴식을 제공하는 리조트입니다.', '061-8765-4321', '010-4321-9876', '수영장, 레스토랑, 스파', 220000, '전라남도 여수시 바다로 9876', 'h6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 게스트하우스 데이터 7 - 썸네일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '여수 도심 게스트하우스', '여수 도심에서 편안한 휴식을 즐길 수 있는 게스트하우스입니다.', '061-7654-3210', '010-9876-4321', '무료 와이파이, 주방 시설, 라운지', 50000, '전라남도 여수시 도심로 4321', 'i1.webp,i2.webp,i3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 7 - 디테일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '여수 도심 게스트하우스', '여수 도심에서 편안한 휴식을 즐길 수 있는 게스트하우스입니다.', '061-7654-3210', '010-9876-4321', '무료 와이파이, 주방 시설, 라운지', 50000, '전라남도 여수시 도심로 4321', 'i4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 7 - 디테일(2) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '여수 도심 게스트하우스', '여수 도심에서 편안한 휴식을 즐길 수 있는 게스트하우스입니다.', '061-7654-3210', '010-9876-4321', '무료 와이파이, 주방 시설, 라운지', 50000, '전라남도 여수시 도심로 4321', 'i5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 7 - 디테일(3) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '게스트하우스', '여수 도심 게스트하우스', '여수 도심에서 편안한 휴식을 즐길 수 있는 게스트하우스입니다.', '061-7654-3210', '010-9876-4321', '무료 와이파이, 주방 시설, 라운지', 50000, '전라남도 여수시 도심로 4321', 'i6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);


-- 모텔 데이터 8 - 썸네일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '여수 해피 모텔', '여수에서 즐거운 휴식을 제공하는 모텔입니다.', '061-8888-7777', '010-9876-5432', '주차장, 와이파이, 미니바', 60000, '전라남도 여수시 행복로 5678', 'j1.webp,j2.webp,j3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 모텔 데이터 8 - 디테일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '여수 해피 모텔', '여수에서 즐거운 휴식을 제공하는 모텔입니다.', '061-8888-7777', '010-9876-5432', '주차장, 와이파이, 미니바', 60000, '전라남도 여수시 행복로 5678', 'j4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 모텔 데이터 8 - 디테일(2) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '여수 해피 모텔', '여수에서 즐거운 휴식을 제공하는 모텔입니다.', '061-8888-7777', '010-9876-5432', '주차장, 와이파이, 미니바', 60000, '전라남도 여수시 행복로 5678', 'j5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 모텔 데이터 8 - 디테일(3) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '여수 해피 모텔', '여수에서 즐거운 휴식을 제공하는 모텔입니다.', '061-8888-7777', '010-9876-5432', '주차장, 와이파이, 미니바', 60000, '전라남도 여수시 행복로 5678', 'j6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 호텔 데이터 9 - 썸네일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 오션 뷰 호텔', '여수에서 아름다운 오션 뷰를 즐길 수 있는 호텔입니다.', '061-4444-3333', '010-5555-1234', '수영장, 레스토랑, 비즈니스 시설', 120000, '전라남도 여수시 오션로 4321', 'p1.webp,p2.webp,p3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 호텔 데이터 9 - 디테일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 오션 뷰 호텔', '여수에서 아름다운 오션 뷰를 즐길 수 있는 호텔입니다.', '061-4444-3333', '010-5555-1234', '수영장, 레스토랑, 비즈니스 시설', 120000, '전라남도 여수시 오션로 4321', 'p4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 호텔 데이터 9 - 디테일(2) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 오션 뷰 호텔', '여수에서 아름다운 오션 뷰를 즐길 수 있는 호텔입니다.', '061-4444-3333', '010-5555-1234', '수영장, 레스토랑, 비즈니스 시설', 120000, '전라남도 여수시 오션로 4321', 'p5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 호텔 데이터 9 - 디테일(3) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '여수 오션 뷰 호텔', '여수에서 아름다운 오션 뷰를 즐길 수 있는 호텔입니다.', '061-4444-3333', '010-5555-1234', '수영장, 레스토랑, 비즈니스 시설', 120000, '전라남도 여수시 오션로 4321', 'p6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);


-- 리조트 데이터 10 - 썸네일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 푸른바다 리조트', '여수의 푸른 바다를 품고 있는 리조트로 편안한 휴식을 제공합니다.', '061-7777-8888', '010-9876-5432', '수영장, 레스토랑, 스파', 160000, '전라남도 여수시 바다로 5678', 's1.webp,s2.webp,s3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 리조트 데이터 10 - 디테일(1) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 푸른바다 리조트', '여수의 푸른 바다를 품고 있는 리조트로 편안한 휴식을 제공합니다.', '061-7777-8888', '010-9876-5432', '수영장, 레스토랑, 스파', 160000, '전라남도 여수시 바다로 5678', 's4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 1, 0, 10, 0);

-- 리조트 데이터 10 - 디테일(2) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 푸른바다 리조트', '여수의 푸른 바다를 품고 있는 리조트로 편안한 휴식을 제공합니다.', '061-7777-8888', '010-9876-5432', '수영장, 레스토랑, 스파', 160000, '전라남도 여수시 바다로 5678', 's5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 1, 0, 10, 0);

-- 리조트 데이터 10 - 디테일(3) - 여수:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '여수 푸른바다 리조트', '여수의 푸른 바다를 품고 있는 리조트로 편안한 휴식을 제공합니다.', '061-7777-8888', '010-9876-5432', '수영장, 레스토랑, 스파', 160000, '전라남도 여수시 바다로 5678', 's6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 1, 0, 10, 0);





-- 펜션 데이터 1 - 썸네일(1) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 그린 포레스트 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 100000, '광주광역시 서구 자연로 5678', 'r1.webp,r2.webp,r3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(1) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 그린 포레스트 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 100000, '광주광역시 서구 자연로 5678', 'r4.webp', hotel_seq.currval-1, 1, '스위트룸', 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(2) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 그린 포레스트 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 100000, '광주광역시 서구 자연로 5678', 'r5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 1 - 디테일(3) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 그린 포레스트 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-1234-5678', '010-9876-5432', '주차장, 바베큐, 에어컨', 100000, '광주광역시 서구 자연로 5678', 'r6.webp', hotel_seq.currval-3, 1, '패밀리룸', 4, 2, 0, 10, 0);




-- 호텔 데이터 2 - 썸네일(1) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '광주 힐튼 호텔', '고급스러운 휴식을 제공하는 호텔입니다.', '062-3333-4444', '010-1111-2222', '주차장, 레스토랑, 스파', 250000, '광주광역시 남구 힐튼로 1234', 's1.webp,s2.webp,s3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 20, 0);

-- 호텔 데이터 2 - 디테일(1) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '광주 힐튼 호텔', '고급스러운 휴식을 제공하는 호텔입니다.', '062-3333-4444', '010-1111-2222', '주차장, 레스토랑, 스파', 250000, '광주광역시 남구 힐튼로 1234', 's4.webp', hotel_seq.currval-1, 1, '스위트룸', 4, 2, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(2) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '광주 힐튼 호텔', '고급스러운 휴식을 제공하는 호텔입니다.', '062-3333-4444', '010-1111-2222', '주차장, 레스토랑, 스파', 250000, '광주광역시 남구 힐튼로 1234', 's5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 호텔 데이터 2 - 디테일(3) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '광주 힐튼 호텔', '고급스러운 휴식을 제공하는 호텔입니다.', '062-3333-4444', '010-1111-2222', '주차장, 레스토랑, 스파', 250000, '광주광역시 남구 힐튼로 1234', 's6.webp', hotel_seq.currval-3, 1, '패밀리룸', 4, 2, 0, 10, 0);




-- 펜션 데이터 3 - 썸네일(1) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 포레스트 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-1111-2222', '010-1234-5678', '주차장, 바베큐, 에어컨', 90000, '광주광역시 서구 자연로 1234', 't1.webp,t2.webp,t3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 3 - 디테일(1) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 포레스트 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-1111-2222', '010-1234-5678', '주차장, 바베큐, 에어컨', 90000, '광주광역시 서구 자연로 1234', 't4.webp', hotel_seq.currval-1, 1, '스위트룸', 4, 2, 0, 10, 0);

-- 펜션 데이터 3 - 디테일(2) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 포레스트 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-1111-2222', '010-1234-5678', '주차장, 바베큐, 에어컨', 90000, '광주광역시 서구 자연로 1234', 't5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 3 - 디테일(3) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 포레스트 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-1111-2222', '010-1234-5678', '주차장, 바베큐, 에어컨', 90000, '광주광역시 서구 자연로 1234', 't6.webp', hotel_seq.currval-3, 1, '패밀리룸', 4, 2, 0, 10, 0);



-- 호텔 데이터 4 - 썸네일(1) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '광주 스타 호텔', '광주에서 편안한 휴식을 취할 수 있는 호텔입니다.', '062-9876-5432', '010-1234-5678', '레스토랑, 수영장, 비즈니스 센터', 120000, '광주광역시 동구 스타로 1234', 'a1.webp,a2.webp,a3.webp', hotel_seq.currval, 0, NULL, 2, 2, 0, 10, 0);

-- 호텔 데이터 4 - 디테일(1) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '광주 스타 호텔', '광주에서 편안한 휴식을 취할 수 있는 호텔입니다.', '062-9876-5432', '010-1234-5678', '레스토랑, 수영장, 비즈니스 센터', 120000, '광주광역시 동구 스타로 1234', 'a4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 2, 0, 10, 0);

-- 호텔 데이터 4 - 디테일(2) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '광주 스타 호텔', '광주에서 편안한 휴식을 취할 수 있는 호텔입니다.', '062-9876-5432', '010-1234-5678', '레스토랑, 수영장, 비즈니스 센터', 120000, '광주광역시 동구 스타로 1234', 'a5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 2, 0, 10, 0);

-- 호텔 데이터 4 - 디테일(3) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '호텔', '광주 스타 호텔', '광주에서 편안한 휴식을 취할 수 있는 호텔입니다.', '062-9876-5432', '010-1234-5678', '레스토랑, 수영장, 비즈니스 센터', 120000, '광주광역시 동구 스타로 1234', 'a6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 2, 0, 10, 0);



-- 모텔 데이터 5 - 썸네일(1) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '광주 러브 모텔', '휴식을 취하기에 적합한 모텔입니다.', '062-9876-5432', '010-1234-5678', '와이파이, 미니 바, TV', 60000, '광주광역시 남구 러브로 567', 'b1.webp,b2.webp,b3.webp', hotel_seq.currval, 0, NULL, 1, 0, 0, 10, 0);

-- 모텔 데이터 5 - 디테일(1) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '광주 러브 모텔', '휴식을 취하기에 적합한 모텔입니다.', '062-9876-5432', '010-1234-5678', '와이파이, 미니 바, TV', 60000, '광주광역시 남구 러브로 567', 'b4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 0, 0, 10, 0);

-- 모텔 데이터 5 - 디테일(2) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '광주 러브 모텔', '휴식을 취하기에 적합한 모텔입니다.', '062-9876-5432', '010-1234-5678', '와이파이, 미니 바, TV', 60000, '광주광역시 남구 러브로 567', 'b5.webp', hotel_seq.currval-2, 1, '더블', 2, 0, 0, 10, 0);

-- 모텔 데이터 5 - 디테일(3) - 광주:
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '광주 러브 모텔', '휴식을 취하기에 적합한 모텔입니다.', '062-9876-5432', '010-1234-5678', '와이파이, 미니 바, TV', 60000, '광주광역시 남구 러브로 567', 'b6.webp', hotel_seq.currval-3, 1, '스위트', 2, 0, 0, 10, 0);



-- 리조트 데이터 6 - 썸네일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '광주 비치 리조트', '자연 속에서 해변 휴식을 즐길 수 있는 리조트입니다.', '062-9876-5432', '010-1234-5678', '수영장, 레스토랑, 비치 액티비티', 160000, '광주시 해안로 1234', 'c1.webp,c2.webp,c3.webp', hotel_seq.currval, 0, NULL, 2, 2, 0, 10, 0);

-- 리조트 데이터 6 - 디테일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '광주 비치 리조트', '자연 속에서 해변 휴식을 즐길 수 있는 리조트입니다.', '062-9876-5432', '010-1234-5678', '수영장, 레스토랑, 비치 액티비티', 160000, '광주시 해안로 1234', 'c4.webp', hotel_seq.currval-1, 1, '스탠다드', 2, 2, 0, 10, 0);

-- 리조트 데이터 6 - 디테일(2):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '광주 비치 리조트', '자연 속에서 해변 휴식을 즐길 수 있는 리조트입니다.', '062-9876-5432', '010-1234-5678', '수영장, 레스토랑, 비치 액티비티', 160000, '광주시 해안로 1234', 'c5.webp', hotel_seq.currval-2, 1, '디럭스', 2, 2, 0, 10, 0);

-- 리조트 데이터 6 - 디테일(3):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '리조트', '광주 비치 리조트', '자연 속에서 해변 휴식을 즐길 수 있는 리조트입니다.', '062-9876-5432', '010-1234-5678', '수영장, 레스토랑, 비치 액티비티', 160000, '광주시 해안로 1234', 'c6.webp', hotel_seq.currval-3, 1, '스위트룸', 2, 2, 0, 10, 0);



-- 펜션 데이터 7 - 썸네일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 숲속 휴양 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-7777-7777', '010-3333-3333', '주차장, 바베큐, 에어컨', 150000, '광주시 어딘가', 'd1.webp,d2.webp,d3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 펜션 데이터 7 - 디테일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 숲속 휴양 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-7777-7777', '010-3333-3333', '주차장, 바베큐, 에어컨', 150000, '광주시 어딘가', 'd4.webp', hotel_seq.currval-1, 1, '스탠다드', 4, 2, 0, 10, 0);

-- 펜션 데이터 7 - 디테일(2):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 숲속 휴양 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-7777-7777', '010-3333-3333', '주차장, 바베큐, 에어컨', 150000, '광주시 어딘가', 'd5.webp', hotel_seq.currval-2, 1, '디럭스', 4, 2, 0, 10, 0);

-- 펜션 데이터 7 - 디테일(3):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 숲속 휴양 펜션', '자연 속에서 휴식을 취할 수 있는 펜션입니다.', '062-7777-7777', '010-3333-3333', '주차장, 바베큐, 에어컨', 150000, '광주시 어딘가', 'd6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);




-- 게스트하우스 데이터 8 - 썸네일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '더킹 게스트하우스', '광주 도심 게스트하우스', '도심에서 편안한 숙박을 즐길 수 있는 게스트하우스입니다.', '062-8888-8888', '010-4444-4444', '무료 와이파이, 공용 주방', 50000, '광주시 중구 어딘가', 'e1.webp,e2.webp,e3.webp', hotel_seq.currval, 0, NULL, 4, 2, 0, 10, 0);

-- 게스트하우스 데이터 8 - 디테일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '더킹 게스트하우스', '광주 도심 게스트하우스', '도심에서 편안한 숙박을 즐길 수 있는 게스트하우스입니다.', '062-8888-8888', '010-4444-4444', '무료 와이파이, 공용 주방', 50000, '광주시 중구 어딘가', 'e4.webp', hotel_seq.currval-1, 1, '2인실', 2, 1, 0, 10, 0);

-- 게스트하우스 데이터 8 - 디테일(2):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '더킹 게스트하우스', '광주 도심 게스트하우스', '도심에서 편안한 숙박을 즐길 수 있는 게스트하우스입니다.', '062-8888-8888', '010-4444-4444', '무료 와이파이, 공용 주방', 50000, '광주시 중구 어딘가', 'e5.webp', hotel_seq.currval-2, 1, '4인 도미토리', 4, 0, 0, 10, 0);

-- 게스트하우스 데이터 8 - 디테일(3):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '더킹 게스트하우스', '광주 도심 게스트하우스', '도심에서 편안한 숙박을 즐길 수 있는 게스트하우스입니다.', '062-8888-8888', '010-4444-4444', '무료 와이파이, 공용 주방', 50000, '광주시 중구 어딘가', 'e6.webp', hotel_seq.currval-3, 1, '여성 도미토리', 6, 0, 0, 10, 0);


-- 모텔 데이터 9 - 썸네일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '광주 럭셔리 모텔', '고급스러운 분위기의 럭셔리 모텔입니다.', '062-9999-9999', '010-5555-5555', '와이파이, 미니바, 스파', 90000, '광주시 서구 모텔로 1234', 'f1.webp,f2.webp,f3.webp', hotel_seq.currval, 0, NULL, 2, 0, 0, 10, 0);

-- 모텔 데이터 9 - 디테일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '광주 럭셔리 모텔', '고급스러운 분위기의 럭셔리 모텔입니다.', '062-9999-9999', '010-5555-5555', '와이파이, 미니바, 스파', 90000, '광주시 서구 모텔로 1234', 'f4.webp', hotel_seq.currval-1, 1, '스탠다드룸', 2, 0, 0, 10, 0);

-- 모텔 데이터 9 - 디테일(2):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '광주 럭셔리 모텔', '고급스러운 분위기의 럭셔리 모텔입니다.', '062-9999-9999', '010-5555-5555', '와이파이, 미니바, 스파', 90000, '광주시 서구 모텔로 1234', 'f5.webp', hotel_seq.currval-2, 1, '디럭스룸', 2, 0, 0, 10, 0);

-- 모텔 데이터 9 - 디테일(3):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '모텔', '광주 럭셔리 모텔', '고급스러운 분위기의 럭셔리 모텔입니다.', '062-9999-9999', '010-5555-5555', '와이파이, 미니바, 스파', 90000, '광주시 서구 모텔로 1234', 'f6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);



-- 펜션 데이터 10 - 썸네일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 하늘 뷰 펜션', '아름다운 하늘을 볼 수 있는 펜션입니다.', '062-8888-8888', '010-4444-4444', '와이파이, 풀장, 조식 제공', 110000, '광주시 남구 하늘길 123', 'g1.webp,g2.webp,g3.webp', hotel_seq.currval, 0, NULL, 2, 0, 0, 10, 0);

-- 펜션 데이터 10 - 디테일(1):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 하늘 뷰 펜션', '아름다운 하늘을 볼 수 있는 펜션입니다.', '062-8888-8888', '010-4444-4444', '와이파이, 풀장, 조식 제공', 110000, '광주시 남구 하늘길 123', 'g4.webp', hotel_seq.currval-1, 1, '스탠다드룸', 2, 0, 0, 10, 0);

-- 펜션 데이터 10 - 디테일(2):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 하늘 뷰 펜션', '아름다운 하늘을 볼 수 있는 펜션입니다.', '062-8888-8888', '010-4444-4444', '와이파이, 풀장, 조식 제공', 110000, '광주시 남구 하늘길 123', 'g5.webp', hotel_seq.currval-2, 1, '디럭스룸', 2, 0, 0, 10, 0);

-- 펜션 데이터 10 - 디테일(3):
INSERT INTO hotel (num, type, title, content, contactfax, contact, service, price,   address, img, ref, re_step, roomtype, adultmax, kidmax, count, status, heartcount)
VALUES
    (hotel_seq.nextval, '펜션', '광주 하늘 뷰 펜션', '아름다운 하늘을 볼 수 있는 펜션입니다.', '062-8888-8888', '010-4444-4444', '와이파이, 풀장, 조식 제공', 110000, '광주시 남구 하늘길 123', 'g6.webp', hotel_seq.currval-3, 1, '스위트룸', 4, 2, 0, 10, 0);










