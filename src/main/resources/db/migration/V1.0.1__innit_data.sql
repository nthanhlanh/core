INSERT INTO public."_user"
(id, email, firstname, lastname, "password")
VALUES(1, 'admin@mail.com', 'Admin', 'Admin', '$2a$10$n8LPx19.2SG6shnWPv.Rv.qHWWVkchVfGFfTv2e2.suSDPeVRDjTi');

INSERT INTO public."_user"
(id, email, firstname, lastname, "password")
VALUES(2, 'manager@mail.com', 'Admin', 'Admin', '$2a$10$NdNweYyI/xaLBYNrBFE8ruO6tuXghdH/Cqoy8vwHKWpjVrpL26.MW');

INSERT INTO public."_role"
(id, "name")
VALUES(1, 'ADMIN');
INSERT INTO public."_role"
(id, "name")
VALUES(2, 'MANAGER');
INSERT INTO public."_role"
(id, "name")
VALUES(3, 'USER');

INSERT INTO public."_user_roles"
(user_id, role_id)
VALUES(1, 1);
INSERT INTO public."_user_roles"
(user_id, role_id)
VALUES(2, 2);
INSERT INTO public."_user_roles"
(user_id, role_id)
VALUES(2, 3);