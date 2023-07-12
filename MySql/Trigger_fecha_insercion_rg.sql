use inmobiliaria_dega
DELIMITER //
CREATE TRIGGER fecha_insercion
AFTER INSERT ON requerimientos_generales
FOR EACH ROW
BEGIN
    UPDATE requerimientos_generales
    SET fecha_creacion = NOW()
    WHERE id_rg = NEW.id_rg;
END //
DELIMITER ;