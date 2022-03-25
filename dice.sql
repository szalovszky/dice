SET @c:=3;
SET @i:=6;

SET @d:= DATE_FORMAT(NOW(), '%y_%m_%d__%H_%i_%s');
SET @s:= CONCAT('CREATE TABLE `d', @d, '` (VALUE VARCHAR(24))');
PREPARE stmt3 FROM @s;EXECUTE stmt3;DEALLOCATE PREPARE stmt3;

SET @b:=0;

DROP PROCEDURE IF EXISTS GEN;

DELIMITER $$  
CREATE PROCEDURE GEN()
    BEGIN
      SET @a = 0;
      simple_loop: LOOP
        SET @a=@a+1;
        SET @s:= CONCAT('INSERT INTO `d', @d ,'` (`value`) VALUES ("0")');
        PREPARE stmt3 FROM @s;EXECUTE stmt3;DEALLOCATE PREPARE stmt3;
        IF @a=@c THEN
            SET @s:= CONCAT('UPDATE `d', @d, '` set `value`=FLOOR(', @i ,' * rand()) + 1;');
            PREPARE stmt3 FROM @s;EXECUTE stmt3;DEALLOCATE PREPARE stmt3;
            SET @s:= CONCAT('SELECT SUM(`value`) FROM d', @d);
            PREPARE stmt3 FROM @s;EXECUTE stmt3;DEALLOCATE PREPARE stmt3;
            LEAVE simple_loop;
        END IF;
    END LOOP simple_loop;
END $$

CALL `GEN`()