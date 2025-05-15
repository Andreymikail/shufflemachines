/* Formatted on 30/03/2017 19:23:38 (QP5 v5.252.13127.32847) */
CREATE OR REPLACE PACKAGE pkg_torto
IS
   TYPE r_torto IS RECORD
   (
      ps11   VARCHAR2 (1),
      ps12   VARCHAR2 (1),
      ps13   VARCHAR2 (1),
      ps14   VARCHAR2 (1),
      ps15   VARCHAR2 (1),
      ps16   VARCHAR2 (1),
      ps21   VARCHAR2 (1),
      ps22   VARCHAR2 (1),
      ps23   VARCHAR2 (1),
      ps24   VARCHAR2 (1),
      ps25   VARCHAR2 (1),
      ps26   VARCHAR2 (1),
      ps31   VARCHAR2 (1),
      ps32   VARCHAR2 (1),
      ps33   VARCHAR2 (1),
      ps34   VARCHAR2 (1),
      ps35   VARCHAR2 (1),
      ps36   VARCHAR2 (1)
   );

   TYPE t_torto IS TABLE OF r_torto;

   TYPE r_torto_res IS RECORD
   (
      colA      VARCHAR2 (1),
      colB      VARCHAR2 (1),
      colC      VARCHAR2 (1),
      palavra   VARCHAR2 (8)
   );

   TYPE t_torto_res IS TABLE OF r_torto_res;

   FUNCTION fc_torto_res (plv01   IN VARCHAR2,
                          plv02   IN VARCHAR2,
                          plv03   IN VARCHAR2 DEFAULT NULL,
                          plv04   IN VARCHAR2 DEFAULT NULL,
                          plv05   IN VARCHAR2 DEFAULT NULL,
                          plv06   IN VARCHAR2 DEFAULT NULL,
                          plv07   IN VARCHAR2 DEFAULT NULL,
                          plv08   IN VARCHAR2 DEFAULT NULL,
                          plv09   IN VARCHAR2 DEFAULT NULL,
                          plv10   IN VARCHAR2 DEFAULT NULL,
                          plv11   IN VARCHAR2 DEFAULT NULL,
                          plv12   IN VARCHAR2 DEFAULT NULL,
                          plv13   IN VARCHAR2 DEFAULT NULL,
                          plv14   IN VARCHAR2 DEFAULT NULL,
                          plv15   IN VARCHAR2 DEFAULT NULL,
                          plv16   IN VARCHAR2 DEFAULT NULL,
                          plv17   IN VARCHAR2 DEFAULT NULL,
                          plv18   IN VARCHAR2 DEFAULT NULL,
                          plv19   IN VARCHAR2 DEFAULT NULL,
                          plv20   IN VARCHAR2 DEFAULT NULL,
                          plv21   IN VARCHAR2 DEFAULT NULL,
                          plv22   IN VARCHAR2 DEFAULT NULL,
                          plv23   IN VARCHAR2 DEFAULT NULL,
                          plv24   IN VARCHAR2 DEFAULT NULL,
                          plv25   IN VARCHAR2 DEFAULT NULL,
                          plv26   IN VARCHAR2 DEFAULT NULL,
                          plv27   IN VARCHAR2 DEFAULT NULL,
                          plv28   IN VARCHAR2 DEFAULT NULL,
                          plv29   IN VARCHAR2 DEFAULT NULL,
                          plv30   IN VARCHAR2 DEFAULT NULL)
      RETURN t_torto_res
      PIPELINED;

   FUNCTION fc_torto_lg (plg     IN VARCHAR2,
                         plv01   IN VARCHAR2,
                         plv02   IN VARCHAR2,
                         plv03   IN VARCHAR2 DEFAULT NULL,
                         plv04   IN VARCHAR2 DEFAULT NULL,
                         plv05   IN VARCHAR2 DEFAULT NULL,
                         plv06   IN VARCHAR2 DEFAULT NULL,
                         plv07   IN VARCHAR2 DEFAULT NULL,
                         plv08   IN VARCHAR2 DEFAULT NULL,
                         plv09   IN VARCHAR2 DEFAULT NULL,
                         plv10   IN VARCHAR2 DEFAULT NULL,
                         plv11   IN VARCHAR2 DEFAULT NULL,
                         plv12   IN VARCHAR2 DEFAULT NULL,
                         plv13   IN VARCHAR2 DEFAULT NULL,
                         plv14   IN VARCHAR2 DEFAULT NULL,
                         plv15   IN VARCHAR2 DEFAULT NULL,
                         plv16   IN VARCHAR2 DEFAULT NULL,
                         plv17   IN VARCHAR2 DEFAULT NULL,
                         plv18   IN VARCHAR2 DEFAULT NULL,
                         plv19   IN VARCHAR2 DEFAULT NULL,
                         plv20   IN VARCHAR2 DEFAULT NULL,
                         plv21   IN VARCHAR2 DEFAULT NULL,
                         plv22   IN VARCHAR2 DEFAULT NULL,
                         plv23   IN VARCHAR2 DEFAULT NULL,
                         plv24   IN VARCHAR2 DEFAULT NULL,
                         plv25   IN VARCHAR2 DEFAULT NULL,
                         plv26   IN VARCHAR2 DEFAULT NULL,
                         plv27   IN VARCHAR2 DEFAULT NULL,
                         plv28   IN VARCHAR2 DEFAULT NULL,
                         plv29   IN VARCHAR2 DEFAULT NULL,
                         plv30   IN VARCHAR2 DEFAULT NULL)
      RETURN t_torto_res
      PIPELINED;

   FUNCTION fc_torto (palavra   IN VARCHAR2,
                      ps11      IN VARCHAR2 DEFAULT NULL,
                      ps12      IN VARCHAR2 DEFAULT NULL,
                      ps13      IN VARCHAR2 DEFAULT NULL,
                      ps14      IN VARCHAR2 DEFAULT NULL,
                      ps15      IN VARCHAR2 DEFAULT NULL,
                      ps16      IN VARCHAR2 DEFAULT NULL,
                      ps21      IN VARCHAR2 DEFAULT NULL,
                      ps22      IN VARCHAR2 DEFAULT NULL,
                      ps23      IN VARCHAR2 DEFAULT NULL,
                      ps24      IN VARCHAR2 DEFAULT NULL,
                      ps25      IN VARCHAR2 DEFAULT NULL,
                      ps26      IN VARCHAR2 DEFAULT NULL,
                      ps31      IN VARCHAR2 DEFAULT NULL,
                      ps32      IN VARCHAR2 DEFAULT NULL,
                      ps33      IN VARCHAR2 DEFAULT NULL,
                      ps34      IN VARCHAR2 DEFAULT NULL,
                      ps35      IN VARCHAR2 DEFAULT NULL,
                      ps36      IN VARCHAR2 DEFAULT NULL)
      RETURN T_torto
      PIPELINED;

   PROCEDURE pr_torto_res (plv01   IN VARCHAR2,
                           plv02   IN VARCHAR2,
                           plv03   IN VARCHAR2 DEFAULT NULL,
                           plv04   IN VARCHAR2 DEFAULT NULL,
                           plv05   IN VARCHAR2 DEFAULT NULL,
                           plv06   IN VARCHAR2 DEFAULT NULL,
                           plv07   IN VARCHAR2 DEFAULT NULL,
                           plv08   IN VARCHAR2 DEFAULT NULL,
                           plv09   IN VARCHAR2 DEFAULT NULL,
                           plv10   IN VARCHAR2 DEFAULT NULL,
                           plv11   IN VARCHAR2 DEFAULT NULL,
                           plv12   IN VARCHAR2 DEFAULT NULL,
                           plv13   IN VARCHAR2 DEFAULT NULL,
                           plv14   IN VARCHAR2 DEFAULT NULL,
                           plv15   IN VARCHAR2 DEFAULT NULL,
                           plv16   IN VARCHAR2 DEFAULT NULL,
                           plv17   IN VARCHAR2 DEFAULT NULL,
                           plv18   IN VARCHAR2 DEFAULT NULL,
                           plv19   IN VARCHAR2 DEFAULT NULL,
                           plv20   IN VARCHAR2 DEFAULT NULL,
                           plv21   IN VARCHAR2 DEFAULT NULL,
                           plv22   IN VARCHAR2 DEFAULT NULL,
                           plv23   IN VARCHAR2 DEFAULT NULL,
                           plv24   IN VARCHAR2 DEFAULT NULL,
                           plv25   IN VARCHAR2 DEFAULT NULL,
                           plv26   IN VARCHAR2 DEFAULT NULL,
                           plv27   IN VARCHAR2 DEFAULT NULL,
                           plv28   IN VARCHAR2 DEFAULT NULL,
                           plv29   IN VARCHAR2 DEFAULT NULL,
                           plv30   IN VARCHAR2 DEFAULT NULL);
END;
/

CREATE OR REPLACE PACKAGE BODY pkg_torto
AS
   /*
   VERSÃO:
   1.00 - Criação da package - 03/03/2017
   */

   FUNCTION fc_torto_res (plv01   IN VARCHAR2,
                          plv02   IN VARCHAR2,
                          plv03   IN VARCHAR2 DEFAULT NULL,
                          plv04   IN VARCHAR2 DEFAULT NULL,
                          plv05   IN VARCHAR2 DEFAULT NULL,
                          plv06   IN VARCHAR2 DEFAULT NULL,
                          plv07   IN VARCHAR2 DEFAULT NULL,
                          plv08   IN VARCHAR2 DEFAULT NULL,
                          plv09   IN VARCHAR2 DEFAULT NULL,
                          plv10   IN VARCHAR2 DEFAULT NULL,
                          plv11   IN VARCHAR2 DEFAULT NULL,
                          plv12   IN VARCHAR2 DEFAULT NULL,
                          plv13   IN VARCHAR2 DEFAULT NULL,
                          plv14   IN VARCHAR2 DEFAULT NULL,
                          plv15   IN VARCHAR2 DEFAULT NULL,
                          plv16   IN VARCHAR2 DEFAULT NULL,
                          plv17   IN VARCHAR2 DEFAULT NULL,
                          plv18   IN VARCHAR2 DEFAULT NULL,
                          plv19   IN VARCHAR2 DEFAULT NULL,
                          plv20   IN VARCHAR2 DEFAULT NULL,
                          plv21   IN VARCHAR2 DEFAULT NULL,
                          plv22   IN VARCHAR2 DEFAULT NULL,
                          plv23   IN VARCHAR2 DEFAULT NULL,
                          plv24   IN VARCHAR2 DEFAULT NULL,
                          plv25   IN VARCHAR2 DEFAULT NULL,
                          plv26   IN VARCHAR2 DEFAULT NULL,
                          plv27   IN VARCHAR2 DEFAULT NULL,
                          plv28   IN VARCHAR2 DEFAULT NULL,
                          plv29   IN VARCHAR2 DEFAULT NULL,
                          plv30   IN VARCHAR2 DEFAULT NULL)
      RETURN t_torto_res
      PIPELINED
   IS
      ps11      VARCHAR2 (1) := NULL;
      ps12      VARCHAR2 (1) := NULL;
      ps13      VARCHAR2 (1) := NULL;
      ps14      VARCHAR2 (1) := NULL;
      ps15      VARCHAR2 (1) := NULL;
      ps16      VARCHAR2 (1) := NULL;
      ps21      VARCHAR2 (1) := NULL;
      ps22      VARCHAR2 (1) := NULL;
      ps23      VARCHAR2 (1) := NULL;
      ps24      VARCHAR2 (1) := NULL;
      ps25      VARCHAR2 (1) := NULL;
      ps26      VARCHAR2 (1) := NULL;
      ps31      VARCHAR2 (1) := NULL;
      ps32      VARCHAR2 (1) := NULL;
      ps33      VARCHAR2 (1) := NULL;
      ps34      VARCHAR2 (1) := NULL;
      ps35      VARCHAR2 (1) := NULL;
      ps36      VARCHAR2 (1) := NULL;
      v_ltr1    VARCHAR2 (1);
      v_ltr2    VARCHAR2 (1);
      v_ltr3    VARCHAR2 (1);
      v_ltr4    VARCHAR2 (1);
      v_ltr5    VARCHAR2 (1);
      v_ltr6    VARCHAR2 (1);
      v_ltr7    VARCHAR2 (1);
      v_ltr8    VARCHAR2 (1);
      v_ltr9    VARCHAR2 (1);
      v_ltr10   VARCHAR2 (1);
      v_ps22    VARCHAR2 (1);
      v_ps23    VARCHAR2 (1);
      v_ps24    VARCHAR2 (1);
      v_ps25    VARCHAR2 (1);
      rec       r_torto_res;
      v_exist   NUMBER;
   BEGIN
      SELECT ltr1,
             ltr2,
             ltr3,
             ltr4,
             ltr5,
             ltr6,
             ltr7,
             ltr8,
             ltr9,
             ltr10
        INTO v_ltr1,
             v_ltr2,
             v_ltr3,
             v_ltr4,
             v_ltr5,
             v_ltr6,
             v_ltr7,
             v_ltr8,
             v_ltr9,
             v_ltr10
        FROM (SELECT ltr, 'ltr' || ROWNUM lps
                FROM (  SELECT ltr, COUNT (*)
                          FROM (SELECT ltr1,
                                       ltr2,
                                       ltr3,
                                       ltr4,
                                       ltr5,
                                       ltr6,
                                       ltr7,
                                       ltr8
                                  FROM (SELECT SUBSTR (palavra, 1, 1) ltr1,
                                               SUBSTR (palavra, 2, 1) ltr2,
                                               SUBSTR (palavra, 3, 1) ltr3,
                                               SUBSTR (palavra, 4, 1) ltr4,
                                               SUBSTR (palavra, 5, 1) ltr5,
                                               SUBSTR (palavra, 6, 1) ltr6,
                                               SUBSTR (palavra, 7, 1) ltr7,
                                               SUBSTR (palavra, 8, 1) ltr8
                                          FROM (SELECT plv01 palavra FROM DUAL
                                                UNION
                                                SELECT plv02 palavra FROM DUAL
                                                UNION
                                                SELECT plv03 palavra FROM DUAL
                                                UNION
                                                SELECT plv04 palavra FROM DUAL
                                                UNION
                                                SELECT plv05 palavra FROM DUAL
                                                UNION
                                                SELECT plv06 palavra FROM DUAL
                                                UNION
                                                SELECT plv07 palavra FROM DUAL
                                                UNION
                                                SELECT plv08 palavra FROM DUAL
                                                UNION
                                                SELECT plv09 palavra FROM DUAL
                                                UNION
                                                SELECT plv10 palavra FROM DUAL
                                                UNION
                                                SELECT plv11 palavra FROM DUAL
                                                UNION
                                                SELECT plv12 palavra FROM DUAL
                                                UNION
                                                SELECT plv13 palavra FROM DUAL
                                                UNION
                                                SELECT plv14 palavra FROM DUAL
                                                UNION
                                                SELECT plv15 palavra FROM DUAL
                                                UNION
                                                SELECT plv16 palavra FROM DUAL
                                                UNION
                                                SELECT plv17 palavra FROM DUAL
                                                UNION
                                                SELECT plv18 palavra FROM DUAL
                                                UNION
                                                SELECT plv19 palavra FROM DUAL
                                                UNION
                                                SELECT plv20 palavra FROM DUAL
                                                UNION
                                                SELECT plv21 palavra FROM DUAL
                                                UNION
                                                SELECT plv22 palavra FROM DUAL
                                                UNION
                                                SELECT plv23 palavra FROM DUAL
                                                UNION
                                                SELECT plv24 palavra FROM DUAL
                                                UNION
                                                SELECT plv25 palavra FROM DUAL
                                                UNION
                                                SELECT plv26 palavra FROM DUAL
                                                UNION
                                                SELECT plv27 palavra FROM DUAL
                                                UNION
                                                SELECT plv28 palavra FROM DUAL
                                                UNION
                                                SELECT plv29 palavra FROM DUAL
                                                UNION
                                                SELECT plv30 palavra FROM DUAL))) UNPIVOT (ltr
                                                                                  FOR ct
                                                                                  IN  (ltr1,
                                                                                      ltr2,
                                                                                      ltr3,
                                                                                      ltr4,
                                                                                      ltr5,
                                                                                      ltr6,
                                                                                      ltr7,
                                                                                      ltr8))
                      GROUP BY ltr
                      ORDER BY 2 DESC)
               WHERE ROWNUM <= 10) PIVOT (MIN (ltr)
                                   FOR lps
                                   IN  ('ltr1' AS ltr1,
                                       'ltr2' AS ltr2,
                                       'ltr3' AS ltr3,
                                       'ltr4' AS ltr4,
                                       'ltr5' AS ltr5,
                                       'ltr6' AS ltr6,
                                       'ltr7' AS ltr7,
                                       'ltr8' AS ltr8,
                                       'ltr9' AS ltr9,
                                       'ltr10' AS ltr10));

      IF v_ltr10 IS NULL
      THEN
         v_ps22 := v_ltr3;
         v_ps23 := v_ltr1;
         v_ps24 := v_ltr2;
         v_ps25 := v_ltr4;

         FOR CR
            IN (  SELECT palavra
                    FROM (SELECT plv01 palavra FROM DUAL
                          UNION
                          SELECT plv02 palavra FROM DUAL
                          UNION
                          SELECT plv03 palavra FROM DUAL
                          UNION
                          SELECT plv04 palavra FROM DUAL
                          UNION
                          SELECT plv05 palavra FROM DUAL
                          UNION
                          SELECT plv06 palavra FROM DUAL
                          UNION
                          SELECT plv07 palavra FROM DUAL
                          UNION
                          SELECT plv08 palavra FROM DUAL
                          UNION
                          SELECT plv09 palavra FROM DUAL
                          UNION
                          SELECT plv10 palavra FROM DUAL
                          UNION
                          SELECT plv11 palavra FROM DUAL
                          UNION
                          SELECT plv12 palavra FROM DUAL
                          UNION
                          SELECT plv13 palavra FROM DUAL
                          UNION
                          SELECT plv14 palavra FROM DUAL
                          UNION
                          SELECT plv15 palavra FROM DUAL
                          UNION
                          SELECT plv16 palavra FROM DUAL
                          UNION
                          SELECT plv17 palavra FROM DUAL
                          UNION
                          SELECT plv18 palavra FROM DUAL
                          UNION
                          SELECT plv19 palavra FROM DUAL
                          UNION
                          SELECT plv20 palavra FROM DUAL
                          UNION
                          SELECT plv21 palavra FROM DUAL
                          UNION
                          SELECT plv22 palavra FROM DUAL
                          UNION
                          SELECT plv23 palavra FROM DUAL
                          UNION
                          SELECT plv24 palavra FROM DUAL
                          UNION
                          SELECT plv25 palavra FROM DUAL
                          UNION
                          SELECT plv26 palavra FROM DUAL
                          UNION
                          SELECT plv27 palavra FROM DUAL
                          UNION
                          SELECT plv28 palavra FROM DUAL
                          UNION
                          SELECT plv29 palavra FROM DUAL
                          UNION
                          SELECT plv30 palavra FROM DUAL)
                   WHERE palavra IS NOT NULL
                ORDER BY LENGTH (palavra),
                         LENGTH (
                            REPLACE (
                               REPLACE (
                                  REPLACE (REPLACE (palavra, v_ps22, ''),
                                           v_ps23,
                                           ''),
                                  v_ps24,
                                  ''),
                               v_ps25,
                               '')))
         LOOP
            SELECT COUNT (*)
              INTO v_exist
              FROM TABLE (pkg_torto.fc_torto (cr.palavra,
                                              ps11,
                                              ps12,
                                              ps13,
                                              ps14,
                                              ps15,
                                              ps16,
                                              ps21,
                                              ps22,
                                              ps23,
                                              ps24,
                                              ps25,
                                              ps26,
                                              ps31,
                                              ps32,
                                              ps33,
                                              ps34,
                                              ps35,
                                              ps36))
             WHERE     (ps22 IS NULL OR ps22 IN (v_ps22))
                   AND (ps23 IS NULL OR ps23 IN (v_ps23))
                   AND (ps24 IS NULL OR ps24 IN (v_ps24))
                   AND (ps25 IS NULL OR ps25 IN (v_ps25))
                   AND LENGTH (ps22 || ps23 || ps24 || ps25) IS NOT NULL;

            IF v_exist > 0
            THEN
               SELECT ps11,
                      ps12,
                      ps13,
                      ps14,
                      ps15,
                      ps16,
                      ps21,
                      ps22,
                      ps23,
                      ps24,
                      ps25,
                      ps26,
                      ps31,
                      ps32,
                      ps33,
                      ps34,
                      ps35,
                      ps36
                 INTO ps11,
                      ps12,
                      ps13,
                      ps14,
                      ps15,
                      ps16,
                      ps21,
                      ps22,
                      ps23,
                      ps24,
                      ps25,
                      ps26,
                      ps31,
                      ps32,
                      ps33,
                      ps34,
                      ps35,
                      ps36
                 FROM (  SELECT ps11,
                                ps12,
                                ps13,
                                ps14,
                                ps15,
                                ps16,
                                ps21,
                                ps22,
                                ps23,
                                ps24,
                                ps25,
                                ps26,
                                ps31,
                                ps32,
                                ps33,
                                ps34,
                                ps35,
                                ps36
                           FROM TABLE (pkg_torto.fc_torto (cr.palavra,
                                                           ps11,
                                                           ps12,
                                                           ps13,
                                                           ps14,
                                                           ps15,
                                                           ps16,
                                                           ps21,
                                                           ps22,
                                                           ps23,
                                                           ps24,
                                                           ps25,
                                                           ps26,
                                                           ps31,
                                                           ps32,
                                                           ps33,
                                                           ps34,
                                                           ps35,
                                                           ps36))
                          WHERE     (ps22 IS NULL OR ps22 IN (v_ps22))
                                AND (ps23 IS NULL OR ps23 IN (v_ps23))
                                AND (ps24 IS NULL OR ps24 IN (v_ps24))
                                AND (ps25 IS NULL OR ps25 IN (v_ps25))
                                AND LENGTH (ps22 || ps23 || ps24 || ps25)
                                       IS NOT NULL
                       ORDER BY LENGTH (ps22 || ps23 || ps24 || ps25) DESC,
                                LENGTH (
                                      ps11
                                   || ps12
                                   || ps13
                                   || ps14
                                   || ps15
                                   || ps16
                                   || ps21
                                   || ps22
                                   || ps23
                                   || ps24
                                   || ps25
                                   || ps26
                                   || ps31
                                   || ps32
                                   || ps33
                                   || ps34
                                   || ps35
                                   || ps36))
                WHERE ROWNUM = 1;


               SELECT ps11,
                      ps21,
                      ps31,
                      cr.palavra
                 INTO rec
                 FROM DUAL;

               PIPE ROW (rec);

               SELECT ps12,
                      ps22,
                      ps32,
                      NULL
                 INTO rec
                 FROM DUAL;

               PIPE ROW (rec);

               SELECT ps13,
                      ps23,
                      ps33,
                      NULL
                 INTO rec
                 FROM DUAL;

               PIPE ROW (rec);

               SELECT ps14,
                      ps24,
                      ps34,
                      NULL
                 INTO rec
                 FROM DUAL;

               PIPE ROW (rec);

               SELECT ps15,
                      ps25,
                      ps35,
                      NULL
                 INTO rec
                 FROM DUAL;

               PIPE ROW (rec);

               SELECT ps16,
                      ps26,
                      ps36,
                      NULL
                 INTO rec
                 FROM DUAL;

               PIPE ROW (rec);

               SELECT '#',
                      '#',
                      '#',
                      '#'
                 INTO rec
                 FROM DUAL;

               PIPE ROW (rec);
            END IF;
         END LOOP;


         RETURN;
      ELSE
         SELECT '#',
                '>',
                '9',
                'letras'
           INTO rec
           FROM DUAL;

         PIPE ROW (rec);
         RETURN;
      END IF;
   END fc_torto_res;

   FUNCTION fc_torto_lg (plg     IN VARCHAR2,
                         plv01   IN VARCHAR2,
                         plv02   IN VARCHAR2,
                         plv03   IN VARCHAR2 DEFAULT NULL,
                         plv04   IN VARCHAR2 DEFAULT NULL,
                         plv05   IN VARCHAR2 DEFAULT NULL,
                         plv06   IN VARCHAR2 DEFAULT NULL,
                         plv07   IN VARCHAR2 DEFAULT NULL,
                         plv08   IN VARCHAR2 DEFAULT NULL,
                         plv09   IN VARCHAR2 DEFAULT NULL,
                         plv10   IN VARCHAR2 DEFAULT NULL,
                         plv11   IN VARCHAR2 DEFAULT NULL,
                         plv12   IN VARCHAR2 DEFAULT NULL,
                         plv13   IN VARCHAR2 DEFAULT NULL,
                         plv14   IN VARCHAR2 DEFAULT NULL,
                         plv15   IN VARCHAR2 DEFAULT NULL,
                         plv16   IN VARCHAR2 DEFAULT NULL,
                         plv17   IN VARCHAR2 DEFAULT NULL,
                         plv18   IN VARCHAR2 DEFAULT NULL,
                         plv19   IN VARCHAR2 DEFAULT NULL,
                         plv20   IN VARCHAR2 DEFAULT NULL,
                         plv21   IN VARCHAR2 DEFAULT NULL,
                         plv22   IN VARCHAR2 DEFAULT NULL,
                         plv23   IN VARCHAR2 DEFAULT NULL,
                         plv24   IN VARCHAR2 DEFAULT NULL,
                         plv25   IN VARCHAR2 DEFAULT NULL,
                         plv26   IN VARCHAR2 DEFAULT NULL,
                         plv27   IN VARCHAR2 DEFAULT NULL,
                         plv28   IN VARCHAR2 DEFAULT NULL,
                         plv29   IN VARCHAR2 DEFAULT NULL,
                         plv30   IN VARCHAR2 DEFAULT NULL)
      RETURN t_torto_res
      PIPELINED
   IS
      ps11         VARCHAR2 (1) := NULL;
      ps12         VARCHAR2 (1) := NULL;
      ps13         VARCHAR2 (1) := NULL;
      ps14         VARCHAR2 (1) := NULL;
      ps15         VARCHAR2 (1) := NULL;
      ps16         VARCHAR2 (1) := NULL;
      ps21         VARCHAR2 (1) := NULL;
      ps22         VARCHAR2 (1) := NULL;
      ps23         VARCHAR2 (1) := NULL;
      ps24         VARCHAR2 (1) := NULL;
      ps25         VARCHAR2 (1) := NULL;
      ps26         VARCHAR2 (1) := NULL;
      ps31         VARCHAR2 (1) := NULL;
      ps32         VARCHAR2 (1) := NULL;
      ps33         VARCHAR2 (1) := NULL;
      ps34         VARCHAR2 (1) := NULL;
      ps35         VARCHAR2 (1) := NULL;
      ps36         VARCHAR2 (1) := NULL;
      v_ltr1       VARCHAR2 (1);
      v_ltr2       VARCHAR2 (1);
      v_ltr3       VARCHAR2 (1);
      v_ltr4       VARCHAR2 (1);
      v_ltr5       VARCHAR2 (1);
      v_ltr6       VARCHAR2 (1);
      v_ltr7       VARCHAR2 (1);
      v_ltr8       VARCHAR2 (1);
      v_ltr9       VARCHAR2 (1);
      v_ltr10      VARCHAR2 (1);
      v_ps22       VARCHAR2 (1);
      v_ps23       VARCHAR2 (1);
      v_ps24       VARCHAR2 (1);
      v_ps25       VARCHAR2 (1);
      rec          r_torto_res;
      v_exist      NUMBER;
      v_contador   NUMBER;
   BEGIN
      SELECT ltr1,
             ltr2,
             ltr3,
             ltr4,
             ltr5,
             ltr6,
             ltr7,
             ltr8,
             ltr9,
             ltr10
        INTO v_ltr1,
             v_ltr2,
             v_ltr3,
             v_ltr4,
             v_ltr5,
             v_ltr6,
             v_ltr7,
             v_ltr8,
             v_ltr9,
             v_ltr10
        FROM (SELECT ltr, 'ltr' || ROWNUM lps
                FROM (  SELECT ltr, COUNT (*)
                          FROM (SELECT ltr1,
                                       ltr2,
                                       ltr3,
                                       ltr4,
                                       ltr5,
                                       ltr6,
                                       ltr7,
                                       ltr8
                                  FROM (SELECT SUBSTR (palavra, 1, 1) ltr1,
                                               SUBSTR (palavra, 2, 1) ltr2,
                                               SUBSTR (palavra, 3, 1) ltr3,
                                               SUBSTR (palavra, 4, 1) ltr4,
                                               SUBSTR (palavra, 5, 1) ltr5,
                                               SUBSTR (palavra, 6, 1) ltr6,
                                               SUBSTR (palavra, 7, 1) ltr7,
                                               SUBSTR (palavra, 8, 1) ltr8
                                          FROM (SELECT plv01 palavra FROM DUAL
                                                UNION
                                                SELECT plv02 palavra FROM DUAL
                                                UNION
                                                SELECT plv03 palavra FROM DUAL
                                                UNION
                                                SELECT plv04 palavra FROM DUAL
                                                UNION
                                                SELECT plv05 palavra FROM DUAL
                                                UNION
                                                SELECT plv06 palavra FROM DUAL
                                                UNION
                                                SELECT plv07 palavra FROM DUAL
                                                UNION
                                                SELECT plv08 palavra FROM DUAL
                                                UNION
                                                SELECT plv09 palavra FROM DUAL
                                                UNION
                                                SELECT plv10 palavra FROM DUAL
                                                UNION
                                                SELECT plv11 palavra FROM DUAL
                                                UNION
                                                SELECT plv12 palavra FROM DUAL
                                                UNION
                                                SELECT plv13 palavra FROM DUAL
                                                UNION
                                                SELECT plv14 palavra FROM DUAL
                                                UNION
                                                SELECT plv15 palavra FROM DUAL
                                                UNION
                                                SELECT plv16 palavra FROM DUAL
                                                UNION
                                                SELECT plv17 palavra FROM DUAL
                                                UNION
                                                SELECT plv18 palavra FROM DUAL
                                                UNION
                                                SELECT plv19 palavra FROM DUAL
                                                UNION
                                                SELECT plv20 palavra FROM DUAL
                                                UNION
                                                SELECT plv21 palavra FROM DUAL
                                                UNION
                                                SELECT plv22 palavra FROM DUAL
                                                UNION
                                                SELECT plv23 palavra FROM DUAL
                                                UNION
                                                SELECT plv24 palavra FROM DUAL
                                                UNION
                                                SELECT plv25 palavra FROM DUAL
                                                UNION
                                                SELECT plv26 palavra FROM DUAL
                                                UNION
                                                SELECT plv27 palavra FROM DUAL
                                                UNION
                                                SELECT plv28 palavra FROM DUAL
                                                UNION
                                                SELECT plv29 palavra FROM DUAL
                                                UNION
                                                SELECT plv30 palavra FROM DUAL))) UNPIVOT (ltr
                                                                                  FOR ct
                                                                                  IN  (ltr1,
                                                                                      ltr2,
                                                                                      ltr3,
                                                                                      ltr4,
                                                                                      ltr5,
                                                                                      ltr6,
                                                                                      ltr7,
                                                                                      ltr8))
                      GROUP BY ltr
                      ORDER BY 2 DESC)
               WHERE ROWNUM <= 10) PIVOT (MIN (ltr)
                                   FOR lps
                                   IN  ('ltr1' AS ltr1,
                                       'ltr2' AS ltr2,
                                       'ltr3' AS ltr3,
                                       'ltr4' AS ltr4,
                                       'ltr5' AS ltr5,
                                       'ltr6' AS ltr6,
                                       'ltr7' AS ltr7,
                                       'ltr8' AS ltr8,
                                       'ltr9' AS ltr9,
                                       'ltr10' AS ltr10));


      v_ps22 := v_ltr3;
      v_ps23 := v_ltr1;
      v_ps24 := v_ltr2;
      v_ps25 := v_ltr4;

      FOR CR
         IN (  SELECT palavra
                 FROM (SELECT plv01 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv02 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv03 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv04 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv05 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv06 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv07 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv08 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv09 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv10 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv11 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv12 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv13 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv14 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv15 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv16 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv17 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv18 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv19 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv20 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv21 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv22 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv23 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv24 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv25 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv26 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv27 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv28 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv29 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT plv30 palavra, 1 cj FROM DUAL
                       UNION
                       SELECT palavra, 2 cj
                         FROM palavra_lg
                        WHERE lg = plg)
                WHERE palavra IS NOT NULL
             ORDER BY cj,
                      LENGTH (palavra),
                      LENGTH (
                         REPLACE (
                            REPLACE (
                               REPLACE (REPLACE (palavra, v_ps22, ''),
                                        v_ps23,
                                        ''),
                               v_ps24,
                               ''),
                            v_ps25,
                            '')))
      LOOP
         v_contador := 1;

         SELECT COUNT (*)
           INTO v_exist
           FROM TABLE (pkg_torto.fc_torto (cr.palavra,
                                           ps11,
                                           ps12,
                                           ps13,
                                           ps14,
                                           ps15,
                                           ps16,
                                           ps21,
                                           ps22,
                                           ps23,
                                           ps24,
                                           ps25,
                                           ps26,
                                           ps31,
                                           ps32,
                                           ps33,
                                           ps34,
                                           ps35,
                                           ps36))
          WHERE     (ps22 IS NULL OR ps22 IN (v_ps22))
                AND (ps23 IS NULL OR ps23 IN (v_ps23))
                AND (ps24 IS NULL OR ps24 IN (v_ps24))
                AND (ps25 IS NULL OR ps25 IN (v_ps25))
                AND LENGTH (ps22 || ps23 || ps24 || ps25) IS NOT NULL;

         IF v_exist > 0
         THEN
            SELECT ps11,
                   ps12,
                   ps13,
                   ps14,
                   ps15,
                   ps16,
                   ps21,
                   ps22,
                   ps23,
                   ps24,
                   ps25,
                   ps26,
                   ps31,
                   ps32,
                   ps33,
                   ps34,
                   ps35,
                   ps36
              INTO ps11,
                   ps12,
                   ps13,
                   ps14,
                   ps15,
                   ps16,
                   ps21,
                   ps22,
                   ps23,
                   ps24,
                   ps25,
                   ps26,
                   ps31,
                   ps32,
                   ps33,
                   ps34,
                   ps35,
                   ps36
              FROM (  SELECT ps11,
                             ps12,
                             ps13,
                             ps14,
                             ps15,
                             ps16,
                             ps21,
                             ps22,
                             ps23,
                             ps24,
                             ps25,
                             ps26,
                             ps31,
                             ps32,
                             ps33,
                             ps34,
                             ps35,
                             ps36
                        FROM TABLE (pkg_torto.fc_torto (cr.palavra,
                                                        ps11,
                                                        ps12,
                                                        ps13,
                                                        ps14,
                                                        ps15,
                                                        ps16,
                                                        ps21,
                                                        ps22,
                                                        ps23,
                                                        ps24,
                                                        ps25,
                                                        ps26,
                                                        ps31,
                                                        ps32,
                                                        ps33,
                                                        ps34,
                                                        ps35,
                                                        ps36))
                       WHERE     (ps22 IS NULL OR ps22 IN (v_ps22))
                             AND (ps23 IS NULL OR ps23 IN (v_ps23))
                             AND (ps24 IS NULL OR ps24 IN (v_ps24))
                             AND (ps25 IS NULL OR ps25 IN (v_ps25))
                             AND LENGTH (ps22 || ps23 || ps24 || ps25)
                                    IS NOT NULL
                    ORDER BY LENGTH (ps22 || ps23 || ps24 || ps25) DESC,
                             LENGTH (
                                   ps11
                                || ps12
                                || ps13
                                || ps14
                                || ps15
                                || ps16
                                || ps21
                                || ps22
                                || ps23
                                || ps24
                                || ps25
                                || ps26
                                || ps31
                                || ps32
                                || ps33
                                || ps34
                                || ps35
                                || ps36))
             WHERE ROWNUM = 1;


            SELECT ps11,
                   ps21,
                   ps31,
                   cr.palavra
              INTO rec
              FROM DUAL;

            PIPE ROW (rec);

            SELECT ps12,
                   ps22,
                   ps32,
                   NULL
              INTO rec
              FROM DUAL;

            PIPE ROW (rec);

            SELECT ps13,
                   ps23,
                   ps33,
                   NULL
              INTO rec
              FROM DUAL;

            PIPE ROW (rec);

            SELECT ps14,
                   ps24,
                   ps34,
                   NULL
              INTO rec
              FROM DUAL;

            PIPE ROW (rec);

            SELECT ps15,
                   ps25,
                   ps35,
                   NULL
              INTO rec
              FROM DUAL;

            PIPE ROW (rec);

            SELECT ps16,
                   ps26,
                   ps36,
                   NULL
              INTO rec
              FROM DUAL;

            PIPE ROW (rec);

            SELECT '#',
                   '#',
                   '#',
                   '#'
              INTO rec
              FROM DUAL;

            PIPE ROW (rec);
         END IF;
      END LOOP;

      RETURN;
   END fc_torto_lg;

   FUNCTION fc_torto (palavra   IN VARCHAR2,
                      ps11      IN VARCHAR2 DEFAULT NULL,
                      ps12      IN VARCHAR2 DEFAULT NULL,
                      ps13      IN VARCHAR2 DEFAULT NULL,
                      ps14      IN VARCHAR2 DEFAULT NULL,
                      ps15      IN VARCHAR2 DEFAULT NULL,
                      ps16      IN VARCHAR2 DEFAULT NULL,
                      ps21      IN VARCHAR2 DEFAULT NULL,
                      ps22      IN VARCHAR2 DEFAULT NULL,
                      ps23      IN VARCHAR2 DEFAULT NULL,
                      ps24      IN VARCHAR2 DEFAULT NULL,
                      ps25      IN VARCHAR2 DEFAULT NULL,
                      ps26      IN VARCHAR2 DEFAULT NULL,
                      ps31      IN VARCHAR2 DEFAULT NULL,
                      ps32      IN VARCHAR2 DEFAULT NULL,
                      ps33      IN VARCHAR2 DEFAULT NULL,
                      ps34      IN VARCHAR2 DEFAULT NULL,
                      ps35      IN VARCHAR2 DEFAULT NULL,
                      ps36      IN VARCHAR2 DEFAULT NULL)
      RETURN T_torto
      PIPELINED
   IS
      v_qt_ltr   NUMBER;
      v_compat   NUMBER;

      rec        r_torto;
   BEGIN
      v_qt_ltr := LENGTH (palavra);



      IF v_qt_ltr = 2
      THEN
         FOR CR
            IN (SELECT DISTINCT
                       CASE
                          WHEN ltr1 = 11 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 11 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps11,
                       CASE
                          WHEN ltr1 = 12 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 12 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps12,
                       CASE
                          WHEN ltr1 = 13 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 13 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps13,
                       CASE
                          WHEN ltr1 = 14 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 14 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps14,
                       CASE
                          WHEN ltr1 = 15 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 15 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps15,
                       CASE
                          WHEN ltr1 = 16 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 16 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps16,
                       CASE
                          WHEN ltr1 = 21 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 21 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps21,
                       CASE
                          WHEN ltr1 = 22 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 22 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps22,
                       CASE
                          WHEN ltr1 = 23 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 23 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps23,
                       CASE
                          WHEN ltr1 = 24 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 24 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps24,
                       CASE
                          WHEN ltr1 = 25 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 25 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps25,
                       CASE
                          WHEN ltr1 = 26 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 26 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps26,
                       CASE
                          WHEN ltr1 = 31 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 31 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps31,
                       CASE
                          WHEN ltr1 = 32 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 32 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps32,
                       CASE
                          WHEN ltr1 = 33 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 33 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps33,
                       CASE
                          WHEN ltr1 = 34 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 34 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps34,
                       CASE
                          WHEN ltr1 = 35 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 35 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps35,
                       CASE
                          WHEN ltr1 = 36 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 36 THEN SUBSTR (palavra, 2, 1)
                          ELSE NULL
                       END
                          ps36
                  FROM (SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2
                         WHERE     ltr1 <> ltr2
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)))
         LOOP
            SELECT COUNT (*)
              INTO v_compat
              FROM (SELECT NVL (joga.ps11, jogb.ps11) ps11,
                           NVL (joga.ps12, jogb.ps12) ps12,
                           NVL (joga.ps13, jogb.ps13) ps13,
                           NVL (joga.ps14, jogb.ps14) ps14,
                           NVL (joga.ps15, jogb.ps15) ps15,
                           NVL (joga.ps16, jogb.ps16) ps16,
                           NVL (joga.ps21, jogb.ps21) ps21,
                           NVL (joga.ps22, jogb.ps22) ps22,
                           NVL (joga.ps23, jogb.ps23) ps23,
                           NVL (joga.ps24, jogb.ps24) ps24,
                           NVL (joga.ps25, jogb.ps25) ps25,
                           NVL (joga.ps26, jogb.ps26) ps26,
                           NVL (joga.ps31, jogb.ps31) ps31,
                           NVL (joga.ps32, jogb.ps32) ps32,
                           NVL (joga.ps33, jogb.ps33) ps33,
                           NVL (joga.ps34, jogb.ps34) ps34,
                           NVL (joga.ps35, jogb.ps35) ps35,
                           NVL (joga.ps36, jogb.ps36) ps36
                      FROM (SELECT ps11,
                                   ps12,
                                   ps13,
                                   ps14,
                                   ps15,
                                   ps16,
                                   ps21,
                                   ps22,
                                   ps23,
                                   ps24,
                                   ps25,
                                   ps26,
                                   ps31,
                                   ps32,
                                   ps33,
                                   ps34,
                                   ps35,
                                   ps36
                              FROM DUAL) joga,
                           (SELECT cr.ps11,
                                   cr.ps12,
                                   cr.ps13,
                                   cr.ps14,
                                   cr.ps15,
                                   cr.ps16,
                                   cr.ps21,
                                   cr.ps22,
                                   cr.ps23,
                                   cr.ps24,
                                   cr.ps25,
                                   cr.ps26,
                                   cr.ps31,
                                   cr.ps32,
                                   cr.ps33,
                                   cr.ps34,
                                   cr.ps35,
                                   cr.ps36
                              FROM DUAL) jogb
                     WHERE (    (   joga.ps11 IS NULL
                                 OR joga.ps11 = jogb.ps11
                                 OR jogb.ps11 IS NULL)
                            AND (   joga.ps12 IS NULL
                                 OR joga.ps12 = jogb.ps12
                                 OR jogb.ps12 IS NULL)
                            AND (   joga.ps13 IS NULL
                                 OR joga.ps13 = jogb.ps13
                                 OR jogb.ps13 IS NULL)
                            AND (   joga.ps14 IS NULL
                                 OR joga.ps14 = jogb.ps14
                                 OR jogb.ps14 IS NULL)
                            AND (   joga.ps15 IS NULL
                                 OR joga.ps15 = jogb.ps15
                                 OR jogb.ps15 IS NULL)
                            AND (   joga.ps16 IS NULL
                                 OR joga.ps16 = jogb.ps16
                                 OR jogb.ps16 IS NULL)
                            AND (   joga.ps21 IS NULL
                                 OR joga.ps21 = jogb.ps21
                                 OR jogb.ps21 IS NULL)
                            AND (   joga.ps22 IS NULL
                                 OR joga.ps22 = jogb.ps22
                                 OR jogb.ps22 IS NULL)
                            AND (   joga.ps23 IS NULL
                                 OR joga.ps23 = jogb.ps23
                                 OR jogb.ps23 IS NULL)
                            AND (   joga.ps24 IS NULL
                                 OR joga.ps24 = jogb.ps24
                                 OR jogb.ps24 IS NULL)
                            AND (   joga.ps25 IS NULL
                                 OR joga.ps25 = jogb.ps25
                                 OR jogb.ps25 IS NULL)
                            AND (   joga.ps26 IS NULL
                                 OR joga.ps26 = jogb.ps26
                                 OR jogb.ps26 IS NULL)
                            AND (   joga.ps31 IS NULL
                                 OR joga.ps31 = jogb.ps31
                                 OR jogb.ps31 IS NULL)
                            AND (   joga.ps32 IS NULL
                                 OR joga.ps32 = jogb.ps32
                                 OR jogb.ps32 IS NULL)
                            AND (   joga.ps33 IS NULL
                                 OR joga.ps33 = jogb.ps33
                                 OR jogb.ps33 IS NULL)
                            AND (   joga.ps34 IS NULL
                                 OR joga.ps34 = jogb.ps34
                                 OR jogb.ps34 IS NULL)
                            AND (   joga.ps35 IS NULL
                                 OR joga.ps35 = jogb.ps35
                                 OR jogb.ps35 IS NULL)
                            AND (   joga.ps36 IS NULL
                                 OR joga.ps36 = jogb.ps36
                                 OR jogb.ps36 IS NULL)));

            IF v_compat <> 0
            THEN
               SELECT NVL (joga.ps11, jogb.ps11) ps11,
                      NVL (joga.ps12, jogb.ps12) ps12,
                      NVL (joga.ps13, jogb.ps13) ps13,
                      NVL (joga.ps14, jogb.ps14) ps14,
                      NVL (joga.ps15, jogb.ps15) ps15,
                      NVL (joga.ps16, jogb.ps16) ps16,
                      NVL (joga.ps21, jogb.ps21) ps21,
                      NVL (joga.ps22, jogb.ps22) ps22,
                      NVL (joga.ps23, jogb.ps23) ps23,
                      NVL (joga.ps24, jogb.ps24) ps24,
                      NVL (joga.ps25, jogb.ps25) ps25,
                      NVL (joga.ps26, jogb.ps26) ps26,
                      NVL (joga.ps31, jogb.ps31) ps31,
                      NVL (joga.ps32, jogb.ps32) ps32,
                      NVL (joga.ps33, jogb.ps33) ps33,
                      NVL (joga.ps34, jogb.ps34) ps34,
                      NVL (joga.ps35, jogb.ps35) ps35,
                      NVL (joga.ps36, jogb.ps36) ps36
                 INTO rec
                 FROM (SELECT ps11,
                              ps12,
                              ps13,
                              ps14,
                              ps15,
                              ps16,
                              ps21,
                              ps22,
                              ps23,
                              ps24,
                              ps25,
                              ps26,
                              ps31,
                              ps32,
                              ps33,
                              ps34,
                              ps35,
                              ps36
                         FROM DUAL) joga,
                      (SELECT cr.ps11,
                              cr.ps12,
                              cr.ps13,
                              cr.ps14,
                              cr.ps15,
                              cr.ps16,
                              cr.ps21,
                              cr.ps22,
                              cr.ps23,
                              cr.ps24,
                              cr.ps25,
                              cr.ps26,
                              cr.ps31,
                              cr.ps32,
                              cr.ps33,
                              cr.ps34,
                              cr.ps35,
                              cr.ps36
                         FROM DUAL) jogb
                WHERE (    (   joga.ps11 IS NULL
                            OR joga.ps11 = jogb.ps11
                            OR jogb.ps11 IS NULL)
                       AND (   joga.ps12 IS NULL
                            OR joga.ps12 = jogb.ps12
                            OR jogb.ps12 IS NULL)
                       AND (   joga.ps13 IS NULL
                            OR joga.ps13 = jogb.ps13
                            OR jogb.ps13 IS NULL)
                       AND (   joga.ps14 IS NULL
                            OR joga.ps14 = jogb.ps14
                            OR jogb.ps14 IS NULL)
                       AND (   joga.ps15 IS NULL
                            OR joga.ps15 = jogb.ps15
                            OR jogb.ps15 IS NULL)
                       AND (   joga.ps16 IS NULL
                            OR joga.ps16 = jogb.ps16
                            OR jogb.ps16 IS NULL)
                       AND (   joga.ps21 IS NULL
                            OR joga.ps21 = jogb.ps21
                            OR jogb.ps21 IS NULL)
                       AND (   joga.ps22 IS NULL
                            OR joga.ps22 = jogb.ps22
                            OR jogb.ps22 IS NULL)
                       AND (   joga.ps23 IS NULL
                            OR joga.ps23 = jogb.ps23
                            OR jogb.ps23 IS NULL)
                       AND (   joga.ps24 IS NULL
                            OR joga.ps24 = jogb.ps24
                            OR jogb.ps24 IS NULL)
                       AND (   joga.ps25 IS NULL
                            OR joga.ps25 = jogb.ps25
                            OR jogb.ps25 IS NULL)
                       AND (   joga.ps26 IS NULL
                            OR joga.ps26 = jogb.ps26
                            OR jogb.ps26 IS NULL)
                       AND (   joga.ps31 IS NULL
                            OR joga.ps31 = jogb.ps31
                            OR jogb.ps31 IS NULL)
                       AND (   joga.ps32 IS NULL
                            OR joga.ps32 = jogb.ps32
                            OR jogb.ps32 IS NULL)
                       AND (   joga.ps33 IS NULL
                            OR joga.ps33 = jogb.ps33
                            OR jogb.ps33 IS NULL)
                       AND (   joga.ps34 IS NULL
                            OR joga.ps34 = jogb.ps34
                            OR jogb.ps34 IS NULL)
                       AND (   joga.ps35 IS NULL
                            OR joga.ps35 = jogb.ps35
                            OR jogb.ps35 IS NULL)
                       AND (   joga.ps36 IS NULL
                            OR joga.ps36 = jogb.ps36
                            OR jogb.ps36 IS NULL));
            END IF;

            PIPE ROW (rec);
         END LOOP;
      ELSIF v_qt_ltr = 3
      THEN
         FOR CR
            IN (SELECT DISTINCT
                       CASE
                          WHEN ltr1 = 11 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 11 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 11 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps11,
                       CASE
                          WHEN ltr1 = 12 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 12 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 12 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps12,
                       CASE
                          WHEN ltr1 = 13 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 13 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 13 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps13,
                       CASE
                          WHEN ltr1 = 14 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 14 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 14 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps14,
                       CASE
                          WHEN ltr1 = 15 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 15 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 15 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps15,
                       CASE
                          WHEN ltr1 = 16 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 16 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 16 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps16,
                       CASE
                          WHEN ltr1 = 21 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 21 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 21 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps21,
                       CASE
                          WHEN ltr1 = 22 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 22 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 22 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps22,
                       CASE
                          WHEN ltr1 = 23 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 23 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 23 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps23,
                       CASE
                          WHEN ltr1 = 24 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 24 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 24 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps24,
                       CASE
                          WHEN ltr1 = 25 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 25 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 25 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps25,
                       CASE
                          WHEN ltr1 = 26 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 26 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 26 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps26,
                       CASE
                          WHEN ltr1 = 31 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 31 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 31 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps31,
                       CASE
                          WHEN ltr1 = 32 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 32 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 32 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps32,
                       CASE
                          WHEN ltr1 = 33 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 33 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 33 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps33,
                       CASE
                          WHEN ltr1 = 34 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 34 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 34 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps34,
                       CASE
                          WHEN ltr1 = 35 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 35 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 35 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps35,
                       CASE
                          WHEN ltr1 = 36 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 36 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 36 THEN SUBSTR (palavra, 3, 1)
                          ELSE NULL
                       END
                          ps36
                  FROM (SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3
                         WHERE     ltr1 NOT IN (ltr2, ltr3)
                               AND ltr2 NOT IN (ltr1, ltr3)
                               AND ltr3 NOT IN (ltr1, ltr2)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)))
         LOOP
            SELECT COUNT (*)
              INTO v_compat
              FROM (SELECT NVL (joga.ps11, jogb.ps11) ps11,
                           NVL (joga.ps12, jogb.ps12) ps12,
                           NVL (joga.ps13, jogb.ps13) ps13,
                           NVL (joga.ps14, jogb.ps14) ps14,
                           NVL (joga.ps15, jogb.ps15) ps15,
                           NVL (joga.ps16, jogb.ps16) ps16,
                           NVL (joga.ps21, jogb.ps21) ps21,
                           NVL (joga.ps22, jogb.ps22) ps22,
                           NVL (joga.ps23, jogb.ps23) ps23,
                           NVL (joga.ps24, jogb.ps24) ps24,
                           NVL (joga.ps25, jogb.ps25) ps25,
                           NVL (joga.ps26, jogb.ps26) ps26,
                           NVL (joga.ps31, jogb.ps31) ps31,
                           NVL (joga.ps32, jogb.ps32) ps32,
                           NVL (joga.ps33, jogb.ps33) ps33,
                           NVL (joga.ps34, jogb.ps34) ps34,
                           NVL (joga.ps35, jogb.ps35) ps35,
                           NVL (joga.ps36, jogb.ps36) ps36
                      FROM (SELECT ps11,
                                   ps12,
                                   ps13,
                                   ps14,
                                   ps15,
                                   ps16,
                                   ps21,
                                   ps22,
                                   ps23,
                                   ps24,
                                   ps25,
                                   ps26,
                                   ps31,
                                   ps32,
                                   ps33,
                                   ps34,
                                   ps35,
                                   ps36
                              FROM DUAL) joga,
                           (SELECT cr.ps11,
                                   cr.ps12,
                                   cr.ps13,
                                   cr.ps14,
                                   cr.ps15,
                                   cr.ps16,
                                   cr.ps21,
                                   cr.ps22,
                                   cr.ps23,
                                   cr.ps24,
                                   cr.ps25,
                                   cr.ps26,
                                   cr.ps31,
                                   cr.ps32,
                                   cr.ps33,
                                   cr.ps34,
                                   cr.ps35,
                                   cr.ps36
                              FROM DUAL) jogb
                     WHERE (    (   joga.ps11 IS NULL
                                 OR joga.ps11 = jogb.ps11
                                 OR jogb.ps11 IS NULL)
                            AND (   joga.ps12 IS NULL
                                 OR joga.ps12 = jogb.ps12
                                 OR jogb.ps12 IS NULL)
                            AND (   joga.ps13 IS NULL
                                 OR joga.ps13 = jogb.ps13
                                 OR jogb.ps13 IS NULL)
                            AND (   joga.ps14 IS NULL
                                 OR joga.ps14 = jogb.ps14
                                 OR jogb.ps14 IS NULL)
                            AND (   joga.ps15 IS NULL
                                 OR joga.ps15 = jogb.ps15
                                 OR jogb.ps15 IS NULL)
                            AND (   joga.ps16 IS NULL
                                 OR joga.ps16 = jogb.ps16
                                 OR jogb.ps16 IS NULL)
                            AND (   joga.ps21 IS NULL
                                 OR joga.ps21 = jogb.ps21
                                 OR jogb.ps21 IS NULL)
                            AND (   joga.ps22 IS NULL
                                 OR joga.ps22 = jogb.ps22
                                 OR jogb.ps22 IS NULL)
                            AND (   joga.ps23 IS NULL
                                 OR joga.ps23 = jogb.ps23
                                 OR jogb.ps23 IS NULL)
                            AND (   joga.ps24 IS NULL
                                 OR joga.ps24 = jogb.ps24
                                 OR jogb.ps24 IS NULL)
                            AND (   joga.ps25 IS NULL
                                 OR joga.ps25 = jogb.ps25
                                 OR jogb.ps25 IS NULL)
                            AND (   joga.ps26 IS NULL
                                 OR joga.ps26 = jogb.ps26
                                 OR jogb.ps26 IS NULL)
                            AND (   joga.ps31 IS NULL
                                 OR joga.ps31 = jogb.ps31
                                 OR jogb.ps31 IS NULL)
                            AND (   joga.ps32 IS NULL
                                 OR joga.ps32 = jogb.ps32
                                 OR jogb.ps32 IS NULL)
                            AND (   joga.ps33 IS NULL
                                 OR joga.ps33 = jogb.ps33
                                 OR jogb.ps33 IS NULL)
                            AND (   joga.ps34 IS NULL
                                 OR joga.ps34 = jogb.ps34
                                 OR jogb.ps34 IS NULL)
                            AND (   joga.ps35 IS NULL
                                 OR joga.ps35 = jogb.ps35
                                 OR jogb.ps35 IS NULL)
                            AND (   joga.ps36 IS NULL
                                 OR joga.ps36 = jogb.ps36
                                 OR jogb.ps36 IS NULL)));

            IF v_compat <> 0
            THEN
               SELECT NVL (joga.ps11, jogb.ps11) ps11,
                      NVL (joga.ps12, jogb.ps12) ps12,
                      NVL (joga.ps13, jogb.ps13) ps13,
                      NVL (joga.ps14, jogb.ps14) ps14,
                      NVL (joga.ps15, jogb.ps15) ps15,
                      NVL (joga.ps16, jogb.ps16) ps16,
                      NVL (joga.ps21, jogb.ps21) ps21,
                      NVL (joga.ps22, jogb.ps22) ps22,
                      NVL (joga.ps23, jogb.ps23) ps23,
                      NVL (joga.ps24, jogb.ps24) ps24,
                      NVL (joga.ps25, jogb.ps25) ps25,
                      NVL (joga.ps26, jogb.ps26) ps26,
                      NVL (joga.ps31, jogb.ps31) ps31,
                      NVL (joga.ps32, jogb.ps32) ps32,
                      NVL (joga.ps33, jogb.ps33) ps33,
                      NVL (joga.ps34, jogb.ps34) ps34,
                      NVL (joga.ps35, jogb.ps35) ps35,
                      NVL (joga.ps36, jogb.ps36) ps36
                 INTO rec
                 FROM (SELECT ps11,
                              ps12,
                              ps13,
                              ps14,
                              ps15,
                              ps16,
                              ps21,
                              ps22,
                              ps23,
                              ps24,
                              ps25,
                              ps26,
                              ps31,
                              ps32,
                              ps33,
                              ps34,
                              ps35,
                              ps36
                         FROM DUAL) joga,
                      (SELECT cr.ps11,
                              cr.ps12,
                              cr.ps13,
                              cr.ps14,
                              cr.ps15,
                              cr.ps16,
                              cr.ps21,
                              cr.ps22,
                              cr.ps23,
                              cr.ps24,
                              cr.ps25,
                              cr.ps26,
                              cr.ps31,
                              cr.ps32,
                              cr.ps33,
                              cr.ps34,
                              cr.ps35,
                              cr.ps36
                         FROM DUAL) jogb
                WHERE (    (   joga.ps11 IS NULL
                            OR joga.ps11 = jogb.ps11
                            OR jogb.ps11 IS NULL)
                       AND (   joga.ps12 IS NULL
                            OR joga.ps12 = jogb.ps12
                            OR jogb.ps12 IS NULL)
                       AND (   joga.ps13 IS NULL
                            OR joga.ps13 = jogb.ps13
                            OR jogb.ps13 IS NULL)
                       AND (   joga.ps14 IS NULL
                            OR joga.ps14 = jogb.ps14
                            OR jogb.ps14 IS NULL)
                       AND (   joga.ps15 IS NULL
                            OR joga.ps15 = jogb.ps15
                            OR jogb.ps15 IS NULL)
                       AND (   joga.ps16 IS NULL
                            OR joga.ps16 = jogb.ps16
                            OR jogb.ps16 IS NULL)
                       AND (   joga.ps21 IS NULL
                            OR joga.ps21 = jogb.ps21
                            OR jogb.ps21 IS NULL)
                       AND (   joga.ps22 IS NULL
                            OR joga.ps22 = jogb.ps22
                            OR jogb.ps22 IS NULL)
                       AND (   joga.ps23 IS NULL
                            OR joga.ps23 = jogb.ps23
                            OR jogb.ps23 IS NULL)
                       AND (   joga.ps24 IS NULL
                            OR joga.ps24 = jogb.ps24
                            OR jogb.ps24 IS NULL)
                       AND (   joga.ps25 IS NULL
                            OR joga.ps25 = jogb.ps25
                            OR jogb.ps25 IS NULL)
                       AND (   joga.ps26 IS NULL
                            OR joga.ps26 = jogb.ps26
                            OR jogb.ps26 IS NULL)
                       AND (   joga.ps31 IS NULL
                            OR joga.ps31 = jogb.ps31
                            OR jogb.ps31 IS NULL)
                       AND (   joga.ps32 IS NULL
                            OR joga.ps32 = jogb.ps32
                            OR jogb.ps32 IS NULL)
                       AND (   joga.ps33 IS NULL
                            OR joga.ps33 = jogb.ps33
                            OR jogb.ps33 IS NULL)
                       AND (   joga.ps34 IS NULL
                            OR joga.ps34 = jogb.ps34
                            OR jogb.ps34 IS NULL)
                       AND (   joga.ps35 IS NULL
                            OR joga.ps35 = jogb.ps35
                            OR jogb.ps35 IS NULL)
                       AND (   joga.ps36 IS NULL
                            OR joga.ps36 = jogb.ps36
                            OR jogb.ps36 IS NULL));
            END IF;

            PIPE ROW (rec);
         END LOOP;
      ELSIF v_qt_ltr = 4
      THEN
         FOR CR
            IN (SELECT DISTINCT
                       CASE
                          WHEN ltr1 = 11 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 11 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 11 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 11 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps11,
                       CASE
                          WHEN ltr1 = 12 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 12 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 12 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 12 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps12,
                       CASE
                          WHEN ltr1 = 13 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 13 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 13 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 13 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps13,
                       CASE
                          WHEN ltr1 = 14 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 14 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 14 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 14 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps14,
                       CASE
                          WHEN ltr1 = 15 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 15 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 15 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 15 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps15,
                       CASE
                          WHEN ltr1 = 16 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 16 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 16 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 16 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps16,
                       CASE
                          WHEN ltr1 = 21 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 21 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 21 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 21 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps21,
                       CASE
                          WHEN ltr1 = 22 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 22 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 22 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 22 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps22,
                       CASE
                          WHEN ltr1 = 23 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 23 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 23 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 23 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps23,
                       CASE
                          WHEN ltr1 = 24 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 24 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 24 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 24 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps24,
                       CASE
                          WHEN ltr1 = 25 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 25 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 25 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 25 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps25,
                       CASE
                          WHEN ltr1 = 26 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 26 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 26 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 26 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps26,
                       CASE
                          WHEN ltr1 = 31 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 31 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 31 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 31 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps31,
                       CASE
                          WHEN ltr1 = 32 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 32 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 32 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 32 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps32,
                       CASE
                          WHEN ltr1 = 33 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 33 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 33 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 33 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps33,
                       CASE
                          WHEN ltr1 = 34 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 34 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 34 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 34 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps34,
                       CASE
                          WHEN ltr1 = 35 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 35 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 35 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 35 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps35,
                       CASE
                          WHEN ltr1 = 36 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 36 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 36 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 36 THEN SUBSTR (palavra, 4, 1)
                          ELSE NULL
                       END
                          ps36
                  FROM (SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3,
                               (SELECT col_a ltr4
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra4
                         WHERE     ltr1 NOT IN (ltr2, ltr3, ltr4)
                               AND ltr2 NOT IN (ltr1, ltr3, ltr4)
                               AND ltr3 NOT IN (ltr1, ltr2, ltr4)
                               AND ltr4 NOT IN (ltr1, ltr2, ltr3)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr3, -1) - SUBSTR (ltr4, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr3, 1, 1) - SUBSTR (ltr4, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                        MINUS
                        SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3,
                               (SELECT col_a ltr4
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra4
                         WHERE     ltr1 NOT IN (ltr2, ltr3, ltr4)
                               AND ltr2 NOT IN (ltr1, ltr3, ltr4)
                               AND ltr3 NOT IN (ltr1, ltr2, ltr4)
                               AND ltr4 NOT IN (ltr1, ltr2, ltr3)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr3, -1) - SUBSTR (ltr4, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr3, 1, 1) - SUBSTR (ltr4, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND (   (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = -9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = 9)
                                    OR (    ltr1 - ltr2 = 9
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 9)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -9)
                                    OR (    ltr1 - ltr2 = 9
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -9
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 11))))
         LOOP
            SELECT COUNT (*)
              INTO v_compat
              FROM (SELECT NVL (joga.ps11, jogb.ps11) ps11,
                           NVL (joga.ps12, jogb.ps12) ps12,
                           NVL (joga.ps13, jogb.ps13) ps13,
                           NVL (joga.ps14, jogb.ps14) ps14,
                           NVL (joga.ps15, jogb.ps15) ps15,
                           NVL (joga.ps16, jogb.ps16) ps16,
                           NVL (joga.ps21, jogb.ps21) ps21,
                           NVL (joga.ps22, jogb.ps22) ps22,
                           NVL (joga.ps23, jogb.ps23) ps23,
                           NVL (joga.ps24, jogb.ps24) ps24,
                           NVL (joga.ps25, jogb.ps25) ps25,
                           NVL (joga.ps26, jogb.ps26) ps26,
                           NVL (joga.ps31, jogb.ps31) ps31,
                           NVL (joga.ps32, jogb.ps32) ps32,
                           NVL (joga.ps33, jogb.ps33) ps33,
                           NVL (joga.ps34, jogb.ps34) ps34,
                           NVL (joga.ps35, jogb.ps35) ps35,
                           NVL (joga.ps36, jogb.ps36) ps36
                      FROM (SELECT ps11,
                                   ps12,
                                   ps13,
                                   ps14,
                                   ps15,
                                   ps16,
                                   ps21,
                                   ps22,
                                   ps23,
                                   ps24,
                                   ps25,
                                   ps26,
                                   ps31,
                                   ps32,
                                   ps33,
                                   ps34,
                                   ps35,
                                   ps36
                              FROM DUAL) joga,
                           (SELECT cr.ps11,
                                   cr.ps12,
                                   cr.ps13,
                                   cr.ps14,
                                   cr.ps15,
                                   cr.ps16,
                                   cr.ps21,
                                   cr.ps22,
                                   cr.ps23,
                                   cr.ps24,
                                   cr.ps25,
                                   cr.ps26,
                                   cr.ps31,
                                   cr.ps32,
                                   cr.ps33,
                                   cr.ps34,
                                   cr.ps35,
                                   cr.ps36
                              FROM DUAL) jogb
                     WHERE (    (   joga.ps11 IS NULL
                                 OR joga.ps11 = jogb.ps11
                                 OR jogb.ps11 IS NULL)
                            AND (   joga.ps12 IS NULL
                                 OR joga.ps12 = jogb.ps12
                                 OR jogb.ps12 IS NULL)
                            AND (   joga.ps13 IS NULL
                                 OR joga.ps13 = jogb.ps13
                                 OR jogb.ps13 IS NULL)
                            AND (   joga.ps14 IS NULL
                                 OR joga.ps14 = jogb.ps14
                                 OR jogb.ps14 IS NULL)
                            AND (   joga.ps15 IS NULL
                                 OR joga.ps15 = jogb.ps15
                                 OR jogb.ps15 IS NULL)
                            AND (   joga.ps16 IS NULL
                                 OR joga.ps16 = jogb.ps16
                                 OR jogb.ps16 IS NULL)
                            AND (   joga.ps21 IS NULL
                                 OR joga.ps21 = jogb.ps21
                                 OR jogb.ps21 IS NULL)
                            AND (   joga.ps22 IS NULL
                                 OR joga.ps22 = jogb.ps22
                                 OR jogb.ps22 IS NULL)
                            AND (   joga.ps23 IS NULL
                                 OR joga.ps23 = jogb.ps23
                                 OR jogb.ps23 IS NULL)
                            AND (   joga.ps24 IS NULL
                                 OR joga.ps24 = jogb.ps24
                                 OR jogb.ps24 IS NULL)
                            AND (   joga.ps25 IS NULL
                                 OR joga.ps25 = jogb.ps25
                                 OR jogb.ps25 IS NULL)
                            AND (   joga.ps26 IS NULL
                                 OR joga.ps26 = jogb.ps26
                                 OR jogb.ps26 IS NULL)
                            AND (   joga.ps31 IS NULL
                                 OR joga.ps31 = jogb.ps31
                                 OR jogb.ps31 IS NULL)
                            AND (   joga.ps32 IS NULL
                                 OR joga.ps32 = jogb.ps32
                                 OR jogb.ps32 IS NULL)
                            AND (   joga.ps33 IS NULL
                                 OR joga.ps33 = jogb.ps33
                                 OR jogb.ps33 IS NULL)
                            AND (   joga.ps34 IS NULL
                                 OR joga.ps34 = jogb.ps34
                                 OR jogb.ps34 IS NULL)
                            AND (   joga.ps35 IS NULL
                                 OR joga.ps35 = jogb.ps35
                                 OR jogb.ps35 IS NULL)
                            AND (   joga.ps36 IS NULL
                                 OR joga.ps36 = jogb.ps36
                                 OR jogb.ps36 IS NULL)));

            IF v_compat <> 0
            THEN
               SELECT NVL (joga.ps11, jogb.ps11) ps11,
                      NVL (joga.ps12, jogb.ps12) ps12,
                      NVL (joga.ps13, jogb.ps13) ps13,
                      NVL (joga.ps14, jogb.ps14) ps14,
                      NVL (joga.ps15, jogb.ps15) ps15,
                      NVL (joga.ps16, jogb.ps16) ps16,
                      NVL (joga.ps21, jogb.ps21) ps21,
                      NVL (joga.ps22, jogb.ps22) ps22,
                      NVL (joga.ps23, jogb.ps23) ps23,
                      NVL (joga.ps24, jogb.ps24) ps24,
                      NVL (joga.ps25, jogb.ps25) ps25,
                      NVL (joga.ps26, jogb.ps26) ps26,
                      NVL (joga.ps31, jogb.ps31) ps31,
                      NVL (joga.ps32, jogb.ps32) ps32,
                      NVL (joga.ps33, jogb.ps33) ps33,
                      NVL (joga.ps34, jogb.ps34) ps34,
                      NVL (joga.ps35, jogb.ps35) ps35,
                      NVL (joga.ps36, jogb.ps36) ps36
                 INTO rec
                 FROM (SELECT ps11,
                              ps12,
                              ps13,
                              ps14,
                              ps15,
                              ps16,
                              ps21,
                              ps22,
                              ps23,
                              ps24,
                              ps25,
                              ps26,
                              ps31,
                              ps32,
                              ps33,
                              ps34,
                              ps35,
                              ps36
                         FROM DUAL) joga,
                      (SELECT cr.ps11,
                              cr.ps12,
                              cr.ps13,
                              cr.ps14,
                              cr.ps15,
                              cr.ps16,
                              cr.ps21,
                              cr.ps22,
                              cr.ps23,
                              cr.ps24,
                              cr.ps25,
                              cr.ps26,
                              cr.ps31,
                              cr.ps32,
                              cr.ps33,
                              cr.ps34,
                              cr.ps35,
                              cr.ps36
                         FROM DUAL) jogb
                WHERE (    (   joga.ps11 IS NULL
                            OR joga.ps11 = jogb.ps11
                            OR jogb.ps11 IS NULL)
                       AND (   joga.ps12 IS NULL
                            OR joga.ps12 = jogb.ps12
                            OR jogb.ps12 IS NULL)
                       AND (   joga.ps13 IS NULL
                            OR joga.ps13 = jogb.ps13
                            OR jogb.ps13 IS NULL)
                       AND (   joga.ps14 IS NULL
                            OR joga.ps14 = jogb.ps14
                            OR jogb.ps14 IS NULL)
                       AND (   joga.ps15 IS NULL
                            OR joga.ps15 = jogb.ps15
                            OR jogb.ps15 IS NULL)
                       AND (   joga.ps16 IS NULL
                            OR joga.ps16 = jogb.ps16
                            OR jogb.ps16 IS NULL)
                       AND (   joga.ps21 IS NULL
                            OR joga.ps21 = jogb.ps21
                            OR jogb.ps21 IS NULL)
                       AND (   joga.ps22 IS NULL
                            OR joga.ps22 = jogb.ps22
                            OR jogb.ps22 IS NULL)
                       AND (   joga.ps23 IS NULL
                            OR joga.ps23 = jogb.ps23
                            OR jogb.ps23 IS NULL)
                       AND (   joga.ps24 IS NULL
                            OR joga.ps24 = jogb.ps24
                            OR jogb.ps24 IS NULL)
                       AND (   joga.ps25 IS NULL
                            OR joga.ps25 = jogb.ps25
                            OR jogb.ps25 IS NULL)
                       AND (   joga.ps26 IS NULL
                            OR joga.ps26 = jogb.ps26
                            OR jogb.ps26 IS NULL)
                       AND (   joga.ps31 IS NULL
                            OR joga.ps31 = jogb.ps31
                            OR jogb.ps31 IS NULL)
                       AND (   joga.ps32 IS NULL
                            OR joga.ps32 = jogb.ps32
                            OR jogb.ps32 IS NULL)
                       AND (   joga.ps33 IS NULL
                            OR joga.ps33 = jogb.ps33
                            OR jogb.ps33 IS NULL)
                       AND (   joga.ps34 IS NULL
                            OR joga.ps34 = jogb.ps34
                            OR jogb.ps34 IS NULL)
                       AND (   joga.ps35 IS NULL
                            OR joga.ps35 = jogb.ps35
                            OR jogb.ps35 IS NULL)
                       AND (   joga.ps36 IS NULL
                            OR joga.ps36 = jogb.ps36
                            OR jogb.ps36 IS NULL));
            END IF;

            PIPE ROW (rec);
         END LOOP;
      ELSIF v_qt_ltr = 5
      THEN
         FOR CR
            IN (SELECT DISTINCT
                       CASE
                          WHEN ltr1 = 11 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 11 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 11 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 11 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 11 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps11,
                       CASE
                          WHEN ltr1 = 12 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 12 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 12 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 12 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 12 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps12,
                       CASE
                          WHEN ltr1 = 13 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 13 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 13 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 13 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 13 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps13,
                       CASE
                          WHEN ltr1 = 14 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 14 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 14 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 14 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 14 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps14,
                       CASE
                          WHEN ltr1 = 15 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 15 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 15 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 15 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 15 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps15,
                       CASE
                          WHEN ltr1 = 16 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 16 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 16 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 16 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 16 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps16,
                       CASE
                          WHEN ltr1 = 21 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 21 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 21 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 21 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 21 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps21,
                       CASE
                          WHEN ltr1 = 22 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 22 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 22 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 22 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 22 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps22,
                       CASE
                          WHEN ltr1 = 23 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 23 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 23 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 23 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 23 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps23,
                       CASE
                          WHEN ltr1 = 24 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 24 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 24 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 24 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 24 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps24,
                       CASE
                          WHEN ltr1 = 25 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 25 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 25 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 25 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 25 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps25,
                       CASE
                          WHEN ltr1 = 26 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 26 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 26 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 26 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 26 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps26,
                       CASE
                          WHEN ltr1 = 31 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 31 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 31 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 31 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 31 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps31,
                       CASE
                          WHEN ltr1 = 32 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 32 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 32 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 32 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 32 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps32,
                       CASE
                          WHEN ltr1 = 33 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 33 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 33 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 33 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 33 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps33,
                       CASE
                          WHEN ltr1 = 34 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 34 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 34 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 34 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 34 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps34,
                       CASE
                          WHEN ltr1 = 35 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 35 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 35 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 35 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 35 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps35,
                       CASE
                          WHEN ltr1 = 36 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 36 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 36 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 36 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 36 THEN SUBSTR (palavra, 5, 1)
                          ELSE NULL
                       END
                          ps36
                  FROM (SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3,
                               (SELECT col_a ltr4
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra4,
                               (SELECT col_a ltr5
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra5
                         WHERE     ltr1 NOT IN (ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5)
                               AND ltr2 NOT IN (ltr1,
                                                ltr3,
                                                ltr4,
                                                ltr5)
                               AND ltr3 NOT IN (ltr1,
                                                ltr2,
                                                ltr4,
                                                ltr5)
                               AND ltr4 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr5)
                               AND ltr5 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr3, -1) - SUBSTR (ltr4, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr4, -1) - SUBSTR (ltr5, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr3, 1, 1) - SUBSTR (ltr4, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr4, 1, 1) - SUBSTR (ltr5, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                        MINUS
                        SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3,
                               (SELECT col_a ltr4
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra4,
                               (SELECT col_a ltr5
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra5
                         WHERE     ltr1 NOT IN (ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5)
                               AND ltr2 NOT IN (ltr1,
                                                ltr3,
                                                ltr4,
                                                ltr5)
                               AND ltr3 NOT IN (ltr1,
                                                ltr2,
                                                ltr4,
                                                ltr5)
                               AND ltr4 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr5)
                               AND ltr5 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr3, -1) - SUBSTR (ltr4, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr4, -1) - SUBSTR (ltr5, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr3, 1, 1) - SUBSTR (ltr4, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr4, 1, 1) - SUBSTR (ltr5, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND (   (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = -9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = 9)
                                    OR (    ltr1 - ltr2 = 9
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr2 - ltr3 = -9
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = 9
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 9)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -9)
                                    OR (    ltr1 - ltr2 = 9
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -9
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr2 - ltr3 = 9
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -9
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr1 - ltr2 = -9
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr1 - ltr2 = 9
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               10
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr1 - ltr2 = 11
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               -10
                                        AND ltr4 - ltr5 = 9))))
         LOOP
            SELECT COUNT (*)
              INTO v_compat
              FROM (SELECT NVL (joga.ps11, jogb.ps11) ps11,
                           NVL (joga.ps12, jogb.ps12) ps12,
                           NVL (joga.ps13, jogb.ps13) ps13,
                           NVL (joga.ps14, jogb.ps14) ps14,
                           NVL (joga.ps15, jogb.ps15) ps15,
                           NVL (joga.ps16, jogb.ps16) ps16,
                           NVL (joga.ps21, jogb.ps21) ps21,
                           NVL (joga.ps22, jogb.ps22) ps22,
                           NVL (joga.ps23, jogb.ps23) ps23,
                           NVL (joga.ps24, jogb.ps24) ps24,
                           NVL (joga.ps25, jogb.ps25) ps25,
                           NVL (joga.ps26, jogb.ps26) ps26,
                           NVL (joga.ps31, jogb.ps31) ps31,
                           NVL (joga.ps32, jogb.ps32) ps32,
                           NVL (joga.ps33, jogb.ps33) ps33,
                           NVL (joga.ps34, jogb.ps34) ps34,
                           NVL (joga.ps35, jogb.ps35) ps35,
                           NVL (joga.ps36, jogb.ps36) ps36
                      FROM (SELECT ps11,
                                   ps12,
                                   ps13,
                                   ps14,
                                   ps15,
                                   ps16,
                                   ps21,
                                   ps22,
                                   ps23,
                                   ps24,
                                   ps25,
                                   ps26,
                                   ps31,
                                   ps32,
                                   ps33,
                                   ps34,
                                   ps35,
                                   ps36
                              FROM DUAL) joga,
                           (SELECT cr.ps11,
                                   cr.ps12,
                                   cr.ps13,
                                   cr.ps14,
                                   cr.ps15,
                                   cr.ps16,
                                   cr.ps21,
                                   cr.ps22,
                                   cr.ps23,
                                   cr.ps24,
                                   cr.ps25,
                                   cr.ps26,
                                   cr.ps31,
                                   cr.ps32,
                                   cr.ps33,
                                   cr.ps34,
                                   cr.ps35,
                                   cr.ps36
                              FROM DUAL) jogb
                     WHERE (    (   joga.ps11 IS NULL
                                 OR joga.ps11 = jogb.ps11
                                 OR jogb.ps11 IS NULL)
                            AND (   joga.ps12 IS NULL
                                 OR joga.ps12 = jogb.ps12
                                 OR jogb.ps12 IS NULL)
                            AND (   joga.ps13 IS NULL
                                 OR joga.ps13 = jogb.ps13
                                 OR jogb.ps13 IS NULL)
                            AND (   joga.ps14 IS NULL
                                 OR joga.ps14 = jogb.ps14
                                 OR jogb.ps14 IS NULL)
                            AND (   joga.ps15 IS NULL
                                 OR joga.ps15 = jogb.ps15
                                 OR jogb.ps15 IS NULL)
                            AND (   joga.ps16 IS NULL
                                 OR joga.ps16 = jogb.ps16
                                 OR jogb.ps16 IS NULL)
                            AND (   joga.ps21 IS NULL
                                 OR joga.ps21 = jogb.ps21
                                 OR jogb.ps21 IS NULL)
                            AND (   joga.ps22 IS NULL
                                 OR joga.ps22 = jogb.ps22
                                 OR jogb.ps22 IS NULL)
                            AND (   joga.ps23 IS NULL
                                 OR joga.ps23 = jogb.ps23
                                 OR jogb.ps23 IS NULL)
                            AND (   joga.ps24 IS NULL
                                 OR joga.ps24 = jogb.ps24
                                 OR jogb.ps24 IS NULL)
                            AND (   joga.ps25 IS NULL
                                 OR joga.ps25 = jogb.ps25
                                 OR jogb.ps25 IS NULL)
                            AND (   joga.ps26 IS NULL
                                 OR joga.ps26 = jogb.ps26
                                 OR jogb.ps26 IS NULL)
                            AND (   joga.ps31 IS NULL
                                 OR joga.ps31 = jogb.ps31
                                 OR jogb.ps31 IS NULL)
                            AND (   joga.ps32 IS NULL
                                 OR joga.ps32 = jogb.ps32
                                 OR jogb.ps32 IS NULL)
                            AND (   joga.ps33 IS NULL
                                 OR joga.ps33 = jogb.ps33
                                 OR jogb.ps33 IS NULL)
                            AND (   joga.ps34 IS NULL
                                 OR joga.ps34 = jogb.ps34
                                 OR jogb.ps34 IS NULL)
                            AND (   joga.ps35 IS NULL
                                 OR joga.ps35 = jogb.ps35
                                 OR jogb.ps35 IS NULL)
                            AND (   joga.ps36 IS NULL
                                 OR joga.ps36 = jogb.ps36
                                 OR jogb.ps36 IS NULL)));

            IF v_compat <> 0
            THEN
               SELECT NVL (joga.ps11, jogb.ps11) ps11,
                      NVL (joga.ps12, jogb.ps12) ps12,
                      NVL (joga.ps13, jogb.ps13) ps13,
                      NVL (joga.ps14, jogb.ps14) ps14,
                      NVL (joga.ps15, jogb.ps15) ps15,
                      NVL (joga.ps16, jogb.ps16) ps16,
                      NVL (joga.ps21, jogb.ps21) ps21,
                      NVL (joga.ps22, jogb.ps22) ps22,
                      NVL (joga.ps23, jogb.ps23) ps23,
                      NVL (joga.ps24, jogb.ps24) ps24,
                      NVL (joga.ps25, jogb.ps25) ps25,
                      NVL (joga.ps26, jogb.ps26) ps26,
                      NVL (joga.ps31, jogb.ps31) ps31,
                      NVL (joga.ps32, jogb.ps32) ps32,
                      NVL (joga.ps33, jogb.ps33) ps33,
                      NVL (joga.ps34, jogb.ps34) ps34,
                      NVL (joga.ps35, jogb.ps35) ps35,
                      NVL (joga.ps36, jogb.ps36) ps36
                 INTO rec
                 FROM (SELECT ps11,
                              ps12,
                              ps13,
                              ps14,
                              ps15,
                              ps16,
                              ps21,
                              ps22,
                              ps23,
                              ps24,
                              ps25,
                              ps26,
                              ps31,
                              ps32,
                              ps33,
                              ps34,
                              ps35,
                              ps36
                         FROM DUAL) joga,
                      (SELECT cr.ps11,
                              cr.ps12,
                              cr.ps13,
                              cr.ps14,
                              cr.ps15,
                              cr.ps16,
                              cr.ps21,
                              cr.ps22,
                              cr.ps23,
                              cr.ps24,
                              cr.ps25,
                              cr.ps26,
                              cr.ps31,
                              cr.ps32,
                              cr.ps33,
                              cr.ps34,
                              cr.ps35,
                              cr.ps36
                         FROM DUAL) jogb
                WHERE (    (   joga.ps11 IS NULL
                            OR joga.ps11 = jogb.ps11
                            OR jogb.ps11 IS NULL)
                       AND (   joga.ps12 IS NULL
                            OR joga.ps12 = jogb.ps12
                            OR jogb.ps12 IS NULL)
                       AND (   joga.ps13 IS NULL
                            OR joga.ps13 = jogb.ps13
                            OR jogb.ps13 IS NULL)
                       AND (   joga.ps14 IS NULL
                            OR joga.ps14 = jogb.ps14
                            OR jogb.ps14 IS NULL)
                       AND (   joga.ps15 IS NULL
                            OR joga.ps15 = jogb.ps15
                            OR jogb.ps15 IS NULL)
                       AND (   joga.ps16 IS NULL
                            OR joga.ps16 = jogb.ps16
                            OR jogb.ps16 IS NULL)
                       AND (   joga.ps21 IS NULL
                            OR joga.ps21 = jogb.ps21
                            OR jogb.ps21 IS NULL)
                       AND (   joga.ps22 IS NULL
                            OR joga.ps22 = jogb.ps22
                            OR jogb.ps22 IS NULL)
                       AND (   joga.ps23 IS NULL
                            OR joga.ps23 = jogb.ps23
                            OR jogb.ps23 IS NULL)
                       AND (   joga.ps24 IS NULL
                            OR joga.ps24 = jogb.ps24
                            OR jogb.ps24 IS NULL)
                       AND (   joga.ps25 IS NULL
                            OR joga.ps25 = jogb.ps25
                            OR jogb.ps25 IS NULL)
                       AND (   joga.ps26 IS NULL
                            OR joga.ps26 = jogb.ps26
                            OR jogb.ps26 IS NULL)
                       AND (   joga.ps31 IS NULL
                            OR joga.ps31 = jogb.ps31
                            OR jogb.ps31 IS NULL)
                       AND (   joga.ps32 IS NULL
                            OR joga.ps32 = jogb.ps32
                            OR jogb.ps32 IS NULL)
                       AND (   joga.ps33 IS NULL
                            OR joga.ps33 = jogb.ps33
                            OR jogb.ps33 IS NULL)
                       AND (   joga.ps34 IS NULL
                            OR joga.ps34 = jogb.ps34
                            OR jogb.ps34 IS NULL)
                       AND (   joga.ps35 IS NULL
                            OR joga.ps35 = jogb.ps35
                            OR jogb.ps35 IS NULL)
                       AND (   joga.ps36 IS NULL
                            OR joga.ps36 = jogb.ps36
                            OR jogb.ps36 IS NULL));
            END IF;

            PIPE ROW (rec);
         END LOOP;
      ELSIF v_qt_ltr = 6
      THEN
         FOR CR
            IN (SELECT DISTINCT
                       CASE
                          WHEN ltr1 = 11 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 11 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 11 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 11 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 11 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 11 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps11,
                       CASE
                          WHEN ltr1 = 12 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 12 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 12 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 12 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 12 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 12 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps12,
                       CASE
                          WHEN ltr1 = 13 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 13 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 13 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 13 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 13 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 13 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps13,
                       CASE
                          WHEN ltr1 = 14 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 14 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 14 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 14 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 14 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 14 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps14,
                       CASE
                          WHEN ltr1 = 15 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 15 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 15 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 15 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 15 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 15 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps15,
                       CASE
                          WHEN ltr1 = 16 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 16 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 16 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 16 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 16 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 16 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps16,
                       CASE
                          WHEN ltr1 = 21 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 21 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 21 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 21 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 21 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 21 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps21,
                       CASE
                          WHEN ltr1 = 22 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 22 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 22 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 22 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 22 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 22 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps22,
                       CASE
                          WHEN ltr1 = 23 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 23 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 23 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 23 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 23 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 23 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps23,
                       CASE
                          WHEN ltr1 = 24 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 24 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 24 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 24 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 24 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 24 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps24,
                       CASE
                          WHEN ltr1 = 25 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 25 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 25 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 25 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 25 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 25 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps25,
                       CASE
                          WHEN ltr1 = 26 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 26 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 26 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 26 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 26 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 26 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps26,
                       CASE
                          WHEN ltr1 = 31 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 31 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 31 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 31 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 31 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 31 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps31,
                       CASE
                          WHEN ltr1 = 32 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 32 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 32 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 32 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 32 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 32 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps32,
                       CASE
                          WHEN ltr1 = 33 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 33 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 33 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 33 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 33 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 33 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps33,
                       CASE
                          WHEN ltr1 = 34 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 34 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 34 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 34 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 34 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 34 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps34,
                       CASE
                          WHEN ltr1 = 35 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 35 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 35 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 35 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 35 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 35 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps35,
                       CASE
                          WHEN ltr1 = 36 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 36 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 36 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 36 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 36 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 36 THEN SUBSTR (palavra, 6, 1)
                          ELSE NULL
                       END
                          ps36
                  FROM (SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3,
                               (SELECT col_a ltr4
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra4,
                               (SELECT col_a ltr5
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra5,
                               (SELECT col_a ltr6
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra6
                         WHERE     ltr1 NOT IN (ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6)
                               AND ltr2 NOT IN (ltr1,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6)
                               AND ltr3 NOT IN (ltr1,
                                                ltr2,
                                                ltr4,
                                                ltr5,
                                                ltr6)
                               AND ltr4 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr5,
                                                ltr6)
                               AND ltr5 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr6)
                               AND ltr6 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr3, -1) - SUBSTR (ltr4, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr4, -1) - SUBSTR (ltr5, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr5, -1) - SUBSTR (ltr6, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr3, 1, 1) - SUBSTR (ltr4, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr4, 1, 1) - SUBSTR (ltr5, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr5, 1, 1) - SUBSTR (ltr6, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                        MINUS
                        SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3,
                               (SELECT col_a ltr4
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra4,
                               (SELECT col_a ltr5
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra5,
                               (SELECT col_a ltr6
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra6
                         WHERE     ltr1 NOT IN (ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6)
                               AND ltr2 NOT IN (ltr1,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6)
                               AND ltr3 NOT IN (ltr1,
                                                ltr2,
                                                ltr4,
                                                ltr5,
                                                ltr6)
                               AND ltr4 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr5,
                                                ltr6)
                               AND ltr5 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr6)
                               AND ltr6 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr3, -1) - SUBSTR (ltr4, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr4, -1) - SUBSTR (ltr5, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr5, -1) - SUBSTR (ltr6, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr3, 1, 1) - SUBSTR (ltr4, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr4, 1, 1) - SUBSTR (ltr5, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr5, 1, 1) - SUBSTR (ltr6, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND (   (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = -9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = 9)
                                    OR (    ltr1 - ltr2 = 9
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr2 - ltr3 = -9
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = 9
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -1
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr3 - ltr4 = -9
                                        AND ltr4 - ltr5 = -1
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 1
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr3 - ltr4 = 9
                                        AND ltr4 - ltr5 = 1
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 9)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -9)
                                    OR (    ltr1 - ltr2 = 9
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -9
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr2 - ltr3 = 9
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -9
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -10
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 10
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr3 - ltr4 = 9
                                        AND ltr4 - ltr5 = -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr3 - ltr4 = -9
                                        AND ltr4 - ltr5 = 10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -1
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 1
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr1 - ltr2 = -9
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr1 - ltr2 = 9
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               10
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr1 - ltr2 = 11
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               -10
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = -9
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr2 - ltr3 = 9
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               10
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr2 - ltr3 = 11
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               -10
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = 10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr1 - ltr2 = 9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = 10
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr1 - ltr2 = 11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = -10
                                        AND ltr5 - ltr6 = 9))))
         LOOP
            SELECT COUNT (*)
              INTO v_compat
              FROM (SELECT NVL (joga.ps11, jogb.ps11) ps11,
                           NVL (joga.ps12, jogb.ps12) ps12,
                           NVL (joga.ps13, jogb.ps13) ps13,
                           NVL (joga.ps14, jogb.ps14) ps14,
                           NVL (joga.ps15, jogb.ps15) ps15,
                           NVL (joga.ps16, jogb.ps16) ps16,
                           NVL (joga.ps21, jogb.ps21) ps21,
                           NVL (joga.ps22, jogb.ps22) ps22,
                           NVL (joga.ps23, jogb.ps23) ps23,
                           NVL (joga.ps24, jogb.ps24) ps24,
                           NVL (joga.ps25, jogb.ps25) ps25,
                           NVL (joga.ps26, jogb.ps26) ps26,
                           NVL (joga.ps31, jogb.ps31) ps31,
                           NVL (joga.ps32, jogb.ps32) ps32,
                           NVL (joga.ps33, jogb.ps33) ps33,
                           NVL (joga.ps34, jogb.ps34) ps34,
                           NVL (joga.ps35, jogb.ps35) ps35,
                           NVL (joga.ps36, jogb.ps36) ps36
                      FROM (SELECT ps11,
                                   ps12,
                                   ps13,
                                   ps14,
                                   ps15,
                                   ps16,
                                   ps21,
                                   ps22,
                                   ps23,
                                   ps24,
                                   ps25,
                                   ps26,
                                   ps31,
                                   ps32,
                                   ps33,
                                   ps34,
                                   ps35,
                                   ps36
                              FROM DUAL) joga,
                           (SELECT cr.ps11,
                                   cr.ps12,
                                   cr.ps13,
                                   cr.ps14,
                                   cr.ps15,
                                   cr.ps16,
                                   cr.ps21,
                                   cr.ps22,
                                   cr.ps23,
                                   cr.ps24,
                                   cr.ps25,
                                   cr.ps26,
                                   cr.ps31,
                                   cr.ps32,
                                   cr.ps33,
                                   cr.ps34,
                                   cr.ps35,
                                   cr.ps36
                              FROM DUAL) jogb
                     WHERE (    (   joga.ps11 IS NULL
                                 OR joga.ps11 = jogb.ps11
                                 OR jogb.ps11 IS NULL)
                            AND (   joga.ps12 IS NULL
                                 OR joga.ps12 = jogb.ps12
                                 OR jogb.ps12 IS NULL)
                            AND (   joga.ps13 IS NULL
                                 OR joga.ps13 = jogb.ps13
                                 OR jogb.ps13 IS NULL)
                            AND (   joga.ps14 IS NULL
                                 OR joga.ps14 = jogb.ps14
                                 OR jogb.ps14 IS NULL)
                            AND (   joga.ps15 IS NULL
                                 OR joga.ps15 = jogb.ps15
                                 OR jogb.ps15 IS NULL)
                            AND (   joga.ps16 IS NULL
                                 OR joga.ps16 = jogb.ps16
                                 OR jogb.ps16 IS NULL)
                            AND (   joga.ps21 IS NULL
                                 OR joga.ps21 = jogb.ps21
                                 OR jogb.ps21 IS NULL)
                            AND (   joga.ps22 IS NULL
                                 OR joga.ps22 = jogb.ps22
                                 OR jogb.ps22 IS NULL)
                            AND (   joga.ps23 IS NULL
                                 OR joga.ps23 = jogb.ps23
                                 OR jogb.ps23 IS NULL)
                            AND (   joga.ps24 IS NULL
                                 OR joga.ps24 = jogb.ps24
                                 OR jogb.ps24 IS NULL)
                            AND (   joga.ps25 IS NULL
                                 OR joga.ps25 = jogb.ps25
                                 OR jogb.ps25 IS NULL)
                            AND (   joga.ps26 IS NULL
                                 OR joga.ps26 = jogb.ps26
                                 OR jogb.ps26 IS NULL)
                            AND (   joga.ps31 IS NULL
                                 OR joga.ps31 = jogb.ps31
                                 OR jogb.ps31 IS NULL)
                            AND (   joga.ps32 IS NULL
                                 OR joga.ps32 = jogb.ps32
                                 OR jogb.ps32 IS NULL)
                            AND (   joga.ps33 IS NULL
                                 OR joga.ps33 = jogb.ps33
                                 OR jogb.ps33 IS NULL)
                            AND (   joga.ps34 IS NULL
                                 OR joga.ps34 = jogb.ps34
                                 OR jogb.ps34 IS NULL)
                            AND (   joga.ps35 IS NULL
                                 OR joga.ps35 = jogb.ps35
                                 OR jogb.ps35 IS NULL)
                            AND (   joga.ps36 IS NULL
                                 OR joga.ps36 = jogb.ps36
                                 OR jogb.ps36 IS NULL)));

            IF v_compat <> 0
            THEN
               SELECT NVL (joga.ps11, jogb.ps11) ps11,
                      NVL (joga.ps12, jogb.ps12) ps12,
                      NVL (joga.ps13, jogb.ps13) ps13,
                      NVL (joga.ps14, jogb.ps14) ps14,
                      NVL (joga.ps15, jogb.ps15) ps15,
                      NVL (joga.ps16, jogb.ps16) ps16,
                      NVL (joga.ps21, jogb.ps21) ps21,
                      NVL (joga.ps22, jogb.ps22) ps22,
                      NVL (joga.ps23, jogb.ps23) ps23,
                      NVL (joga.ps24, jogb.ps24) ps24,
                      NVL (joga.ps25, jogb.ps25) ps25,
                      NVL (joga.ps26, jogb.ps26) ps26,
                      NVL (joga.ps31, jogb.ps31) ps31,
                      NVL (joga.ps32, jogb.ps32) ps32,
                      NVL (joga.ps33, jogb.ps33) ps33,
                      NVL (joga.ps34, jogb.ps34) ps34,
                      NVL (joga.ps35, jogb.ps35) ps35,
                      NVL (joga.ps36, jogb.ps36) ps36
                 INTO rec
                 FROM (SELECT ps11,
                              ps12,
                              ps13,
                              ps14,
                              ps15,
                              ps16,
                              ps21,
                              ps22,
                              ps23,
                              ps24,
                              ps25,
                              ps26,
                              ps31,
                              ps32,
                              ps33,
                              ps34,
                              ps35,
                              ps36
                         FROM DUAL) joga,
                      (SELECT cr.ps11,
                              cr.ps12,
                              cr.ps13,
                              cr.ps14,
                              cr.ps15,
                              cr.ps16,
                              cr.ps21,
                              cr.ps22,
                              cr.ps23,
                              cr.ps24,
                              cr.ps25,
                              cr.ps26,
                              cr.ps31,
                              cr.ps32,
                              cr.ps33,
                              cr.ps34,
                              cr.ps35,
                              cr.ps36
                         FROM DUAL) jogb
                WHERE (    (   joga.ps11 IS NULL
                            OR joga.ps11 = jogb.ps11
                            OR jogb.ps11 IS NULL)
                       AND (   joga.ps12 IS NULL
                            OR joga.ps12 = jogb.ps12
                            OR jogb.ps12 IS NULL)
                       AND (   joga.ps13 IS NULL
                            OR joga.ps13 = jogb.ps13
                            OR jogb.ps13 IS NULL)
                       AND (   joga.ps14 IS NULL
                            OR joga.ps14 = jogb.ps14
                            OR jogb.ps14 IS NULL)
                       AND (   joga.ps15 IS NULL
                            OR joga.ps15 = jogb.ps15
                            OR jogb.ps15 IS NULL)
                       AND (   joga.ps16 IS NULL
                            OR joga.ps16 = jogb.ps16
                            OR jogb.ps16 IS NULL)
                       AND (   joga.ps21 IS NULL
                            OR joga.ps21 = jogb.ps21
                            OR jogb.ps21 IS NULL)
                       AND (   joga.ps22 IS NULL
                            OR joga.ps22 = jogb.ps22
                            OR jogb.ps22 IS NULL)
                       AND (   joga.ps23 IS NULL
                            OR joga.ps23 = jogb.ps23
                            OR jogb.ps23 IS NULL)
                       AND (   joga.ps24 IS NULL
                            OR joga.ps24 = jogb.ps24
                            OR jogb.ps24 IS NULL)
                       AND (   joga.ps25 IS NULL
                            OR joga.ps25 = jogb.ps25
                            OR jogb.ps25 IS NULL)
                       AND (   joga.ps26 IS NULL
                            OR joga.ps26 = jogb.ps26
                            OR jogb.ps26 IS NULL)
                       AND (   joga.ps31 IS NULL
                            OR joga.ps31 = jogb.ps31
                            OR jogb.ps31 IS NULL)
                       AND (   joga.ps32 IS NULL
                            OR joga.ps32 = jogb.ps32
                            OR jogb.ps32 IS NULL)
                       AND (   joga.ps33 IS NULL
                            OR joga.ps33 = jogb.ps33
                            OR jogb.ps33 IS NULL)
                       AND (   joga.ps34 IS NULL
                            OR joga.ps34 = jogb.ps34
                            OR jogb.ps34 IS NULL)
                       AND (   joga.ps35 IS NULL
                            OR joga.ps35 = jogb.ps35
                            OR jogb.ps35 IS NULL)
                       AND (   joga.ps36 IS NULL
                            OR joga.ps36 = jogb.ps36
                            OR jogb.ps36 IS NULL));
            END IF;

            PIPE ROW (rec);
         END LOOP;
      ELSIF v_qt_ltr = 7
      THEN
         FOR CR
            IN (SELECT DISTINCT
                       CASE
                          WHEN ltr1 = 11 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 11 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 11 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 11 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 11 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 11 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 11 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps11,
                       CASE
                          WHEN ltr1 = 12 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 12 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 12 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 12 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 12 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 12 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 12 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps12,
                       CASE
                          WHEN ltr1 = 13 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 13 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 13 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 13 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 13 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 13 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 13 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps13,
                       CASE
                          WHEN ltr1 = 14 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 14 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 14 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 14 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 14 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 14 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 14 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps14,
                       CASE
                          WHEN ltr1 = 15 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 15 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 15 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 15 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 15 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 15 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 15 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps15,
                       CASE
                          WHEN ltr1 = 16 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 16 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 16 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 16 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 16 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 16 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 16 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps16,
                       CASE
                          WHEN ltr1 = 21 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 21 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 21 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 21 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 21 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 21 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 21 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps21,
                       CASE
                          WHEN ltr1 = 22 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 22 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 22 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 22 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 22 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 22 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 22 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps22,
                       CASE
                          WHEN ltr1 = 23 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 23 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 23 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 23 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 23 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 23 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 23 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps23,
                       CASE
                          WHEN ltr1 = 24 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 24 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 24 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 24 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 24 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 24 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 24 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps24,
                       CASE
                          WHEN ltr1 = 25 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 25 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 25 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 25 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 25 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 25 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 25 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps25,
                       CASE
                          WHEN ltr1 = 26 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 26 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 26 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 26 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 26 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 26 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 26 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps26,
                       CASE
                          WHEN ltr1 = 31 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 31 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 31 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 31 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 31 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 31 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 31 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps31,
                       CASE
                          WHEN ltr1 = 32 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 32 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 32 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 32 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 32 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 32 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 32 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps32,
                       CASE
                          WHEN ltr1 = 33 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 33 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 33 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 33 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 33 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 33 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 33 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps33,
                       CASE
                          WHEN ltr1 = 34 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 34 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 34 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 34 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 34 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 34 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 34 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps34,
                       CASE
                          WHEN ltr1 = 35 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 35 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 35 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 35 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 35 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 35 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 35 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps35,
                       CASE
                          WHEN ltr1 = 36 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 36 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 36 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 36 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 36 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 36 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 36 THEN SUBSTR (palavra, 7, 1)
                          ELSE NULL
                       END
                          ps36
                  FROM (SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3,
                               (SELECT col_a ltr4
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra4,
                               (SELECT col_a ltr5
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra5,
                               (SELECT col_a ltr6
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra6,
                               (SELECT col_a ltr7
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra7
                         WHERE     ltr1 NOT IN (ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7)
                               AND ltr2 NOT IN (ltr1,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7)
                               AND ltr3 NOT IN (ltr1,
                                                ltr2,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7)
                               AND ltr4 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr5,
                                                ltr6,
                                                ltr7)
                               AND ltr5 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr6,
                                                ltr7)
                               AND ltr6 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr7)
                               AND ltr7 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr3, -1) - SUBSTR (ltr4, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr4, -1) - SUBSTR (ltr5, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr5, -1) - SUBSTR (ltr6, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr6, -1) - SUBSTR (ltr7, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr3, 1, 1) - SUBSTR (ltr4, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr4, 1, 1) - SUBSTR (ltr5, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr5, 1, 1) - SUBSTR (ltr6, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr6, 1, 1) - SUBSTR (ltr7, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                        MINUS
                        SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3,
                               (SELECT col_a ltr4
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra4,
                               (SELECT col_a ltr5
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra5,
                               (SELECT col_a ltr6
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra6,
                               (SELECT col_a ltr7
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra7
                         WHERE     ltr1 NOT IN (ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7)
                               AND ltr2 NOT IN (ltr1,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7)
                               AND ltr3 NOT IN (ltr1,
                                                ltr2,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7)
                               AND ltr4 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr5,
                                                ltr6,
                                                ltr7)
                               AND ltr5 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr6,
                                                ltr7)
                               AND ltr6 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr7)
                               AND ltr7 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr3, -1) - SUBSTR (ltr4, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr4, -1) - SUBSTR (ltr5, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr5, -1) - SUBSTR (ltr6, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr6, -1) - SUBSTR (ltr7, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr3, 1, 1) - SUBSTR (ltr4, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr4, 1, 1) - SUBSTR (ltr5, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr5, 1, 1) - SUBSTR (ltr6, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr6, 1, 1) - SUBSTR (ltr7, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND (   (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = -9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = 9)
                                    OR (    ltr1 - ltr2 = 9
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr2 - ltr3 = -9
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = 9
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -1
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr3 - ltr4 = -9
                                        AND ltr4 - ltr5 = -1
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 1
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr3 - ltr4 = 9
                                        AND ltr4 - ltr5 = 1
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr4 - ltr5 = 11
                                        AND ltr5 - ltr6 = -1
                                        AND ltr6 - ltr7 = -9)
                                    OR (    ltr4 - ltr5 = -9
                                        AND ltr5 - ltr6 = -1
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr4 - ltr5 = -11
                                        AND ltr5 - ltr6 = 1
                                        AND ltr6 - ltr7 = 9)
                                    OR (    ltr4 - ltr5 = 9
                                        AND ltr5 - ltr6 = 1
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 9)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -9)
                                    OR (    ltr1 - ltr2 = 9
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -9
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr2 - ltr3 = 9
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -9
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -10
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 10
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr3 - ltr4 = 9
                                        AND ltr4 - ltr5 = -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr3 - ltr4 = -9
                                        AND ltr4 - ltr5 = 10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr4 - ltr5 = 11
                                        AND ltr5 - ltr6 = -10
                                        AND ltr6 - ltr7 = 9)
                                    OR (    ltr4 - ltr5 = -11
                                        AND ltr5 - ltr6 = 10
                                        AND ltr6 - ltr7 = -9)
                                    OR (    ltr4 - ltr5 = 9
                                        AND ltr5 - ltr6 = -10
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr4 - ltr5 = -9
                                        AND ltr5 - ltr6 = 10
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -1
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 1
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr4 - ltr5 = 11
                                        AND ltr5 - ltr6 = -1
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr4 - ltr5 = -11
                                        AND ltr5 - ltr6 = 1
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr4 - ltr5 = -11
                                        AND ltr5 - ltr6 = 10
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr4 - ltr5 = 11
                                        AND ltr5 - ltr6 = -10
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr1 - ltr2 = -9
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr1 - ltr2 = 9
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               10
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr1 - ltr2 = 11
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               -10
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = -9
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr2 - ltr3 = 9
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               10
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr2 - ltr3 = 11
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               -10
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr3 - ltr4 = -9
                                        AND (ltr4 - ltr5) + (ltr5 - ltr6) =
                                               10
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr3 - ltr4 = 9
                                        AND (ltr4 - ltr5) + (ltr5 - ltr6) =
                                               -10
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND (ltr4 - ltr5) + (ltr5 - ltr6) =
                                               10
                                        AND ltr6 - ltr7 = -9)
                                    OR (    ltr3 - ltr4 = 11
                                        AND (ltr4 - ltr5) + (ltr5 - ltr6) =
                                               -10
                                        AND ltr6 - ltr7 = 9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = 10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr1 - ltr2 = 9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = 10
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr1 - ltr2 = 11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = -10
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr2 - ltr3 = -9
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = 10
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr2 - ltr3 = 9
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = -10
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = 10
                                        AND ltr6 - ltr7 = -9)
                                    OR (    ltr2 - ltr3 = 11
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = -10
                                        AND ltr6 - ltr7 = 9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = 10
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr1 - ltr2 = 9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = -10
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = 10
                                        AND ltr6 - ltr7 = -9)
                                    OR (    ltr1 - ltr2 = 11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = -10
                                        AND ltr6 - ltr7 = 9))))
         LOOP
            SELECT COUNT (*)
              INTO v_compat
              FROM (SELECT NVL (joga.ps11, jogb.ps11) ps11,
                           NVL (joga.ps12, jogb.ps12) ps12,
                           NVL (joga.ps13, jogb.ps13) ps13,
                           NVL (joga.ps14, jogb.ps14) ps14,
                           NVL (joga.ps15, jogb.ps15) ps15,
                           NVL (joga.ps16, jogb.ps16) ps16,
                           NVL (joga.ps21, jogb.ps21) ps21,
                           NVL (joga.ps22, jogb.ps22) ps22,
                           NVL (joga.ps23, jogb.ps23) ps23,
                           NVL (joga.ps24, jogb.ps24) ps24,
                           NVL (joga.ps25, jogb.ps25) ps25,
                           NVL (joga.ps26, jogb.ps26) ps26,
                           NVL (joga.ps31, jogb.ps31) ps31,
                           NVL (joga.ps32, jogb.ps32) ps32,
                           NVL (joga.ps33, jogb.ps33) ps33,
                           NVL (joga.ps34, jogb.ps34) ps34,
                           NVL (joga.ps35, jogb.ps35) ps35,
                           NVL (joga.ps36, jogb.ps36) ps36
                      FROM (SELECT ps11,
                                   ps12,
                                   ps13,
                                   ps14,
                                   ps15,
                                   ps16,
                                   ps21,
                                   ps22,
                                   ps23,
                                   ps24,
                                   ps25,
                                   ps26,
                                   ps31,
                                   ps32,
                                   ps33,
                                   ps34,
                                   ps35,
                                   ps36
                              FROM DUAL) joga,
                           (SELECT cr.ps11,
                                   cr.ps12,
                                   cr.ps13,
                                   cr.ps14,
                                   cr.ps15,
                                   cr.ps16,
                                   cr.ps21,
                                   cr.ps22,
                                   cr.ps23,
                                   cr.ps24,
                                   cr.ps25,
                                   cr.ps26,
                                   cr.ps31,
                                   cr.ps32,
                                   cr.ps33,
                                   cr.ps34,
                                   cr.ps35,
                                   cr.ps36
                              FROM DUAL) jogb
                     WHERE (    (   joga.ps11 IS NULL
                                 OR joga.ps11 = jogb.ps11
                                 OR jogb.ps11 IS NULL)
                            AND (   joga.ps12 IS NULL
                                 OR joga.ps12 = jogb.ps12
                                 OR jogb.ps12 IS NULL)
                            AND (   joga.ps13 IS NULL
                                 OR joga.ps13 = jogb.ps13
                                 OR jogb.ps13 IS NULL)
                            AND (   joga.ps14 IS NULL
                                 OR joga.ps14 = jogb.ps14
                                 OR jogb.ps14 IS NULL)
                            AND (   joga.ps15 IS NULL
                                 OR joga.ps15 = jogb.ps15
                                 OR jogb.ps15 IS NULL)
                            AND (   joga.ps16 IS NULL
                                 OR joga.ps16 = jogb.ps16
                                 OR jogb.ps16 IS NULL)
                            AND (   joga.ps21 IS NULL
                                 OR joga.ps21 = jogb.ps21
                                 OR jogb.ps21 IS NULL)
                            AND (   joga.ps22 IS NULL
                                 OR joga.ps22 = jogb.ps22
                                 OR jogb.ps22 IS NULL)
                            AND (   joga.ps23 IS NULL
                                 OR joga.ps23 = jogb.ps23
                                 OR jogb.ps23 IS NULL)
                            AND (   joga.ps24 IS NULL
                                 OR joga.ps24 = jogb.ps24
                                 OR jogb.ps24 IS NULL)
                            AND (   joga.ps25 IS NULL
                                 OR joga.ps25 = jogb.ps25
                                 OR jogb.ps25 IS NULL)
                            AND (   joga.ps26 IS NULL
                                 OR joga.ps26 = jogb.ps26
                                 OR jogb.ps26 IS NULL)
                            AND (   joga.ps31 IS NULL
                                 OR joga.ps31 = jogb.ps31
                                 OR jogb.ps31 IS NULL)
                            AND (   joga.ps32 IS NULL
                                 OR joga.ps32 = jogb.ps32
                                 OR jogb.ps32 IS NULL)
                            AND (   joga.ps33 IS NULL
                                 OR joga.ps33 = jogb.ps33
                                 OR jogb.ps33 IS NULL)
                            AND (   joga.ps34 IS NULL
                                 OR joga.ps34 = jogb.ps34
                                 OR jogb.ps34 IS NULL)
                            AND (   joga.ps35 IS NULL
                                 OR joga.ps35 = jogb.ps35
                                 OR jogb.ps35 IS NULL)
                            AND (   joga.ps36 IS NULL
                                 OR joga.ps36 = jogb.ps36
                                 OR jogb.ps36 IS NULL)));

            IF v_compat <> 0
            THEN
               SELECT NVL (joga.ps11, jogb.ps11) ps11,
                      NVL (joga.ps12, jogb.ps12) ps12,
                      NVL (joga.ps13, jogb.ps13) ps13,
                      NVL (joga.ps14, jogb.ps14) ps14,
                      NVL (joga.ps15, jogb.ps15) ps15,
                      NVL (joga.ps16, jogb.ps16) ps16,
                      NVL (joga.ps21, jogb.ps21) ps21,
                      NVL (joga.ps22, jogb.ps22) ps22,
                      NVL (joga.ps23, jogb.ps23) ps23,
                      NVL (joga.ps24, jogb.ps24) ps24,
                      NVL (joga.ps25, jogb.ps25) ps25,
                      NVL (joga.ps26, jogb.ps26) ps26,
                      NVL (joga.ps31, jogb.ps31) ps31,
                      NVL (joga.ps32, jogb.ps32) ps32,
                      NVL (joga.ps33, jogb.ps33) ps33,
                      NVL (joga.ps34, jogb.ps34) ps34,
                      NVL (joga.ps35, jogb.ps35) ps35,
                      NVL (joga.ps36, jogb.ps36) ps36
                 INTO rec
                 FROM (SELECT ps11,
                              ps12,
                              ps13,
                              ps14,
                              ps15,
                              ps16,
                              ps21,
                              ps22,
                              ps23,
                              ps24,
                              ps25,
                              ps26,
                              ps31,
                              ps32,
                              ps33,
                              ps34,
                              ps35,
                              ps36
                         FROM DUAL) joga,
                      (SELECT cr.ps11,
                              cr.ps12,
                              cr.ps13,
                              cr.ps14,
                              cr.ps15,
                              cr.ps16,
                              cr.ps21,
                              cr.ps22,
                              cr.ps23,
                              cr.ps24,
                              cr.ps25,
                              cr.ps26,
                              cr.ps31,
                              cr.ps32,
                              cr.ps33,
                              cr.ps34,
                              cr.ps35,
                              cr.ps36
                         FROM DUAL) jogb
                WHERE (    (   joga.ps11 IS NULL
                            OR joga.ps11 = jogb.ps11
                            OR jogb.ps11 IS NULL)
                       AND (   joga.ps12 IS NULL
                            OR joga.ps12 = jogb.ps12
                            OR jogb.ps12 IS NULL)
                       AND (   joga.ps13 IS NULL
                            OR joga.ps13 = jogb.ps13
                            OR jogb.ps13 IS NULL)
                       AND (   joga.ps14 IS NULL
                            OR joga.ps14 = jogb.ps14
                            OR jogb.ps14 IS NULL)
                       AND (   joga.ps15 IS NULL
                            OR joga.ps15 = jogb.ps15
                            OR jogb.ps15 IS NULL)
                       AND (   joga.ps16 IS NULL
                            OR joga.ps16 = jogb.ps16
                            OR jogb.ps16 IS NULL)
                       AND (   joga.ps21 IS NULL
                            OR joga.ps21 = jogb.ps21
                            OR jogb.ps21 IS NULL)
                       AND (   joga.ps22 IS NULL
                            OR joga.ps22 = jogb.ps22
                            OR jogb.ps22 IS NULL)
                       AND (   joga.ps23 IS NULL
                            OR joga.ps23 = jogb.ps23
                            OR jogb.ps23 IS NULL)
                       AND (   joga.ps24 IS NULL
                            OR joga.ps24 = jogb.ps24
                            OR jogb.ps24 IS NULL)
                       AND (   joga.ps25 IS NULL
                            OR joga.ps25 = jogb.ps25
                            OR jogb.ps25 IS NULL)
                       AND (   joga.ps26 IS NULL
                            OR joga.ps26 = jogb.ps26
                            OR jogb.ps26 IS NULL)
                       AND (   joga.ps31 IS NULL
                            OR joga.ps31 = jogb.ps31
                            OR jogb.ps31 IS NULL)
                       AND (   joga.ps32 IS NULL
                            OR joga.ps32 = jogb.ps32
                            OR jogb.ps32 IS NULL)
                       AND (   joga.ps33 IS NULL
                            OR joga.ps33 = jogb.ps33
                            OR jogb.ps33 IS NULL)
                       AND (   joga.ps34 IS NULL
                            OR joga.ps34 = jogb.ps34
                            OR jogb.ps34 IS NULL)
                       AND (   joga.ps35 IS NULL
                            OR joga.ps35 = jogb.ps35
                            OR jogb.ps35 IS NULL)
                       AND (   joga.ps36 IS NULL
                            OR joga.ps36 = jogb.ps36
                            OR jogb.ps36 IS NULL));
            END IF;

            PIPE ROW (rec);
         END LOOP;
      ELSIF v_qt_ltr = 8
      THEN
         FOR CR
            IN (SELECT DISTINCT
                       CASE
                          WHEN ltr1 = 11 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 11 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 11 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 11 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 11 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 11 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 11 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 11 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps11,
                       CASE
                          WHEN ltr1 = 12 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 12 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 12 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 12 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 12 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 12 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 12 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 12 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps12,
                       CASE
                          WHEN ltr1 = 13 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 13 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 13 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 13 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 13 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 13 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 13 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 13 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps13,
                       CASE
                          WHEN ltr1 = 14 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 14 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 14 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 14 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 14 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 14 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 14 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 14 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps14,
                       CASE
                          WHEN ltr1 = 15 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 15 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 15 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 15 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 15 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 15 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 15 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 15 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps15,
                       CASE
                          WHEN ltr1 = 16 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 16 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 16 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 16 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 16 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 16 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 16 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 16 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps16,
                       CASE
                          WHEN ltr1 = 21 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 21 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 21 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 21 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 21 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 21 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 21 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 21 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps21,
                       CASE
                          WHEN ltr1 = 22 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 22 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 22 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 22 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 22 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 22 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 22 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 22 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps22,
                       CASE
                          WHEN ltr1 = 23 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 23 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 23 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 23 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 23 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 23 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 23 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 23 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps23,
                       CASE
                          WHEN ltr1 = 24 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 24 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 24 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 24 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 24 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 24 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 24 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 24 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps24,
                       CASE
                          WHEN ltr1 = 25 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 25 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 25 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 25 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 25 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 25 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 25 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 25 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps25,
                       CASE
                          WHEN ltr1 = 26 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 26 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 26 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 26 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 26 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 26 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 26 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 26 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps26,
                       CASE
                          WHEN ltr1 = 31 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 31 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 31 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 31 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 31 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 31 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 31 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 31 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps31,
                       CASE
                          WHEN ltr1 = 32 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 32 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 32 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 32 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 32 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 32 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 32 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 32 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps32,
                       CASE
                          WHEN ltr1 = 33 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 33 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 33 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 33 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 33 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 33 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 33 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 33 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps33,
                       CASE
                          WHEN ltr1 = 34 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 34 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 34 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 34 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 34 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 34 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 34 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 34 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps34,
                       CASE
                          WHEN ltr1 = 35 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 35 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 35 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 35 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 35 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 35 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 35 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 35 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps35,
                       CASE
                          WHEN ltr1 = 36 THEN SUBSTR (palavra, 1, 1)
                          WHEN ltr2 = 36 THEN SUBSTR (palavra, 2, 1)
                          WHEN ltr3 = 36 THEN SUBSTR (palavra, 3, 1)
                          WHEN ltr4 = 36 THEN SUBSTR (palavra, 4, 1)
                          WHEN ltr5 = 36 THEN SUBSTR (palavra, 5, 1)
                          WHEN ltr6 = 36 THEN SUBSTR (palavra, 6, 1)
                          WHEN ltr7 = 36 THEN SUBSTR (palavra, 7, 1)
                          WHEN ltr8 = 36 THEN SUBSTR (palavra, 8, 1)
                          ELSE NULL
                       END
                          ps36
                  FROM (SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3,
                               (SELECT col_a ltr4
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra4,
                               (SELECT col_a ltr5
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra5,
                               (SELECT col_a ltr6
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra6,
                               (SELECT col_a ltr7
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra7,
                               (SELECT col_a ltr8
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra8
                         WHERE     ltr1 NOT IN (ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7,
                                                ltr8)
                               AND ltr2 NOT IN (ltr1,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7,
                                                ltr8)
                               AND ltr3 NOT IN (ltr1,
                                                ltr2,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7,
                                                ltr8)
                               AND ltr4 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr5,
                                                ltr6,
                                                ltr7,
                                                ltr8)
                               AND ltr5 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr6,
                                                ltr7,
                                                ltr8)
                               AND ltr6 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr7,
                                                ltr8)
                               AND ltr7 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr8)
                               AND ltr8 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr3, -1) - SUBSTR (ltr4, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr4, -1) - SUBSTR (ltr5, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr5, -1) - SUBSTR (ltr6, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr6, -1) - SUBSTR (ltr7, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr7, -1) - SUBSTR (ltr8, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr3, 1, 1) - SUBSTR (ltr4, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr4, 1, 1) - SUBSTR (ltr5, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr5, 1, 1) - SUBSTR (ltr6, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr6, 1, 1) - SUBSTR (ltr7, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr7, 1, 1) - SUBSTR (ltr8, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                        MINUS
                        SELECT *
                          FROM (SELECT col_a ltr1
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra1,
                               (SELECT col_a ltr2
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra2,
                               (SELECT col_a ltr3
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra3,
                               (SELECT col_a ltr4
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra4,
                               (SELECT col_a ltr5
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra5,
                               (SELECT col_a ltr6
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra6,
                               (SELECT col_a ltr7
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra7,
                               (SELECT col_a ltr8
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_b
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)
                                UNION
                                SELECT col_c
                                  FROM (SELECT 11 col_a, 21 col_b, 31 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 12 col_a, 22 col_b, 32 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 13 col_a, 23 col_b, 33 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 14 col_a, 24 col_b, 34 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 15 col_a, 25 col_b, 35 col_c
                                          FROM DUAL
                                        UNION
                                        SELECT 16 col_a, 26 col_b, 36 col_c
                                          FROM DUAL)) letra8
                         WHERE     ltr1 NOT IN (ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7,
                                                ltr8)
                               AND ltr2 NOT IN (ltr1,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7,
                                                ltr8)
                               AND ltr3 NOT IN (ltr1,
                                                ltr2,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7,
                                                ltr8)
                               AND ltr4 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr5,
                                                ltr6,
                                                ltr7,
                                                ltr8)
                               AND ltr5 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr6,
                                                ltr7,
                                                ltr8)
                               AND ltr6 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr7,
                                                ltr8)
                               AND ltr7 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr8)
                               AND ltr8 NOT IN (ltr1,
                                                ltr2,
                                                ltr3,
                                                ltr4,
                                                ltr5,
                                                ltr6,
                                                ltr7)
                               AND SUBSTR (ltr1, -1) - SUBSTR (ltr2, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr2, -1) - SUBSTR (ltr3, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr3, -1) - SUBSTR (ltr4, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr4, -1) - SUBSTR (ltr5, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr5, -1) - SUBSTR (ltr6, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr6, -1) - SUBSTR (ltr7, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr7, -1) - SUBSTR (ltr8, -1) IN (1,
                                                                             0,
                                                                             -1)
                               AND SUBSTR (ltr1, 1, 1) - SUBSTR (ltr2, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr2, 1, 1) - SUBSTR (ltr3, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr3, 1, 1) - SUBSTR (ltr4, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr4, 1, 1) - SUBSTR (ltr5, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr5, 1, 1) - SUBSTR (ltr6, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr6, 1, 1) - SUBSTR (ltr7, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND SUBSTR (ltr7, 1, 1) - SUBSTR (ltr8, 1, 1) IN (1,
                                                                                 0,
                                                                                 -1)
                               AND (   (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = -9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = 9)
                                    OR (    ltr1 - ltr2 = 9
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr2 - ltr3 = -9
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = 9
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -1
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr3 - ltr4 = -9
                                        AND ltr4 - ltr5 = -1
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 1
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr3 - ltr4 = 9
                                        AND ltr4 - ltr5 = 1
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr4 - ltr5 = 11
                                        AND ltr5 - ltr6 = -1
                                        AND ltr6 - ltr7 = -9)
                                    OR (    ltr4 - ltr5 = -9
                                        AND ltr5 - ltr6 = -1
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr4 - ltr5 = -11
                                        AND ltr5 - ltr6 = 1
                                        AND ltr6 - ltr7 = 9)
                                    OR (    ltr4 - ltr5 = 9
                                        AND ltr5 - ltr6 = 1
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr5 - ltr6 = 11
                                        AND ltr6 - ltr7 = -1
                                        AND ltr7 - ltr8 = -9)
                                    OR (    ltr5 - ltr6 = -9
                                        AND ltr6 - ltr7 = -1
                                        AND ltr7 - ltr8 = 11)
                                    OR (    ltr5 - ltr6 = -11
                                        AND ltr6 - ltr7 = 1
                                        AND ltr7 - ltr8 = 9)
                                    OR (    ltr5 - ltr6 = 9
                                        AND ltr6 - ltr7 = 1
                                        AND ltr7 - ltr8 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 9)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -9)
                                    OR (    ltr1 - ltr2 = 9
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -9
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr2 - ltr3 = 9
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -9
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -10
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 10
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr3 - ltr4 = 9
                                        AND ltr4 - ltr5 = -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr3 - ltr4 = -9
                                        AND ltr4 - ltr5 = 10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr4 - ltr5 = 11
                                        AND ltr5 - ltr6 = -10
                                        AND ltr6 - ltr7 = 9)
                                    OR (    ltr4 - ltr5 = -11
                                        AND ltr5 - ltr6 = 10
                                        AND ltr6 - ltr7 = -9)
                                    OR (    ltr4 - ltr5 = 9
                                        AND ltr5 - ltr6 = -10
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr4 - ltr5 = -9
                                        AND ltr5 - ltr6 = 10
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr5 - ltr6 = 11
                                        AND ltr6 - ltr7 = -10
                                        AND ltr7 - ltr8 = 9)
                                    OR (    ltr5 - ltr6 = -11
                                        AND ltr6 - ltr7 = 10
                                        AND ltr7 - ltr8 = -9)
                                    OR (    ltr5 - ltr6 = 9
                                        AND ltr6 - ltr7 = -10
                                        AND ltr7 - ltr8 = 11)
                                    OR (    ltr5 - ltr6 = -9
                                        AND ltr6 - ltr7 = 10
                                        AND ltr7 - ltr8 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -1
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 1
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND ltr2 - ltr3 = 10
                                        AND ltr3 - ltr4 = -11)
                                    OR (    ltr1 - ltr2 = 11
                                        AND ltr2 - ltr3 = -10
                                        AND ltr3 - ltr4 = 11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -1
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 1
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND ltr3 - ltr4 = 10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr2 - ltr3 = 11
                                        AND ltr3 - ltr4 = -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -1
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 1
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND ltr4 - ltr5 = 10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr3 - ltr4 = 11
                                        AND ltr4 - ltr5 = -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr4 - ltr5 = 11
                                        AND ltr5 - ltr6 = -1
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr4 - ltr5 = -11
                                        AND ltr5 - ltr6 = 1
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr4 - ltr5 = -11
                                        AND ltr5 - ltr6 = 10
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr4 - ltr5 = 11
                                        AND ltr5 - ltr6 = -10
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr5 - ltr6 = 11
                                        AND ltr6 - ltr7 = -1
                                        AND ltr7 - ltr8 = 11)
                                    OR (    ltr5 - ltr6 = -11
                                        AND ltr6 - ltr7 = 1
                                        AND ltr7 - ltr8 = -11)
                                    OR (    ltr5 - ltr6 = -11
                                        AND ltr6 - ltr7 = 10
                                        AND ltr7 - ltr8 = -11)
                                    OR (    ltr5 - ltr6 = 11
                                        AND ltr6 - ltr7 = -10
                                        AND ltr7 - ltr8 = 11)
                                    OR (    ltr1 - ltr2 = -9
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               10
                                        AND ltr4 - ltr5 = -11)
                                    OR (    ltr1 - ltr2 = 9
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               -10
                                        AND ltr4 - ltr5 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               10
                                        AND ltr4 - ltr5 = -9)
                                    OR (    ltr1 - ltr2 = 11
                                        AND (ltr2 - ltr3) + (ltr3 - ltr4) =
                                               -10
                                        AND ltr4 - ltr5 = 9)
                                    OR (    ltr2 - ltr3 = -9
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr2 - ltr3 = 9
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               10
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr2 - ltr3 = 11
                                        AND (ltr3 - ltr4) + (ltr4 - ltr5) =
                                               -10
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr3 - ltr4 = -9
                                        AND (ltr4 - ltr5) + (ltr5 - ltr6) =
                                               10
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr3 - ltr4 = 9
                                        AND (ltr4 - ltr5) + (ltr5 - ltr6) =
                                               -10
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND (ltr4 - ltr5) + (ltr5 - ltr6) =
                                               10
                                        AND ltr6 - ltr7 = -9)
                                    OR (    ltr3 - ltr4 = 11
                                        AND (ltr4 - ltr5) + (ltr5 - ltr6) =
                                               -10
                                        AND ltr6 - ltr7 = 9)
                                    OR (    ltr4 - ltr5 = -9
                                        AND (ltr5 - ltr6) + (ltr6 - ltr7) =
                                               10
                                        AND ltr7 - ltr8 = -11)
                                    OR (    ltr4 - ltr5 = 9
                                        AND (ltr5 - ltr6) + (ltr6 - ltr7) =
                                               -10
                                        AND ltr7 - ltr8 = 11)
                                    OR (    ltr4 - ltr5 = -11
                                        AND (ltr5 - ltr6) + (ltr6 - ltr7) =
                                               10
                                        AND ltr7 - ltr8 = -9)
                                    OR (    ltr4 - ltr5 = 11
                                        AND (ltr5 - ltr6) + (ltr6 - ltr7) =
                                               -10
                                        AND ltr7 - ltr8 = 9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = 10
                                        AND ltr5 - ltr6 = -11)
                                    OR (    ltr1 - ltr2 = 9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = -10
                                        AND ltr5 - ltr6 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = 10
                                        AND ltr5 - ltr6 = -9)
                                    OR (    ltr1 - ltr2 = 11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5) = -10
                                        AND ltr5 - ltr6 = 9)
                                    OR (    ltr2 - ltr3 = -9
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = 10
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr2 - ltr3 = 9
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = -10
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = 10
                                        AND ltr6 - ltr7 = -9)
                                    OR (    ltr2 - ltr3 = 11
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = -10
                                        AND ltr6 - ltr7 = 9)
                                    OR (    ltr3 - ltr4 = -9
                                        AND   (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = 10
                                        AND ltr7 - ltr8 = -11)
                                    OR (    ltr3 - ltr4 = 9
                                        AND   (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = -10
                                        AND ltr7 - ltr8 = 11)
                                    OR (    ltr3 - ltr4 = -11
                                        AND   (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = 10
                                        AND ltr7 - ltr8 = -9)
                                    OR (    ltr3 - ltr4 = 11
                                        AND   (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = -10
                                        AND ltr7 - ltr8 = 9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = 10
                                        AND ltr6 - ltr7 = -11)
                                    OR (    ltr1 - ltr2 = 9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = -10
                                        AND ltr6 - ltr7 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = 10
                                        AND ltr6 - ltr7 = -9)
                                    OR (    ltr1 - ltr2 = 11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6) = -10
                                        AND ltr6 - ltr7 = 9)
                                    OR (    ltr2 - ltr3 = -9
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = 10
                                        AND ltr7 - ltr8 = -11)
                                    OR (    ltr2 - ltr3 = 9
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = -10
                                        AND ltr7 - ltr8 = 11)
                                    OR (    ltr2 - ltr3 = -11
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = 10
                                        AND ltr7 - ltr8 = -9)
                                    OR (    ltr2 - ltr3 = 11
                                        AND   (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = -10
                                        AND ltr7 - ltr8 = 9)
                                    OR (    ltr1 - ltr2 = -9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = 10
                                        AND ltr7 - ltr8 = -11)
                                    OR (    ltr1 - ltr2 = 9
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = -10
                                        AND ltr7 - ltr8 = 11)
                                    OR (    ltr1 - ltr2 = -11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = 10
                                        AND ltr7 - ltr8 = -9)
                                    OR (    ltr1 - ltr2 = 11
                                        AND   (ltr2 - ltr3)
                                            + (ltr3 - ltr4)
                                            + (ltr4 - ltr5)
                                            + (ltr5 - ltr6)
                                            + (ltr6 - ltr7) = -10
                                        AND ltr7 - ltr8 = 9))))
         LOOP
            SELECT COUNT (*)
              INTO v_compat
              FROM (SELECT NVL (joga.ps11, jogb.ps11) ps11,
                           NVL (joga.ps12, jogb.ps12) ps12,
                           NVL (joga.ps13, jogb.ps13) ps13,
                           NVL (joga.ps14, jogb.ps14) ps14,
                           NVL (joga.ps15, jogb.ps15) ps15,
                           NVL (joga.ps16, jogb.ps16) ps16,
                           NVL (joga.ps21, jogb.ps21) ps21,
                           NVL (joga.ps22, jogb.ps22) ps22,
                           NVL (joga.ps23, jogb.ps23) ps23,
                           NVL (joga.ps24, jogb.ps24) ps24,
                           NVL (joga.ps25, jogb.ps25) ps25,
                           NVL (joga.ps26, jogb.ps26) ps26,
                           NVL (joga.ps31, jogb.ps31) ps31,
                           NVL (joga.ps32, jogb.ps32) ps32,
                           NVL (joga.ps33, jogb.ps33) ps33,
                           NVL (joga.ps34, jogb.ps34) ps34,
                           NVL (joga.ps35, jogb.ps35) ps35,
                           NVL (joga.ps36, jogb.ps36) ps36
                      FROM (SELECT ps11,
                                   ps12,
                                   ps13,
                                   ps14,
                                   ps15,
                                   ps16,
                                   ps21,
                                   ps22,
                                   ps23,
                                   ps24,
                                   ps25,
                                   ps26,
                                   ps31,
                                   ps32,
                                   ps33,
                                   ps34,
                                   ps35,
                                   ps36
                              FROM DUAL) joga,
                           (SELECT cr.ps11,
                                   cr.ps12,
                                   cr.ps13,
                                   cr.ps14,
                                   cr.ps15,
                                   cr.ps16,
                                   cr.ps21,
                                   cr.ps22,
                                   cr.ps23,
                                   cr.ps24,
                                   cr.ps25,
                                   cr.ps26,
                                   cr.ps31,
                                   cr.ps32,
                                   cr.ps33,
                                   cr.ps34,
                                   cr.ps35,
                                   cr.ps36
                              FROM DUAL) jogb
                     WHERE (    (   joga.ps11 IS NULL
                                 OR joga.ps11 = jogb.ps11
                                 OR jogb.ps11 IS NULL)
                            AND (   joga.ps12 IS NULL
                                 OR joga.ps12 = jogb.ps12
                                 OR jogb.ps12 IS NULL)
                            AND (   joga.ps13 IS NULL
                                 OR joga.ps13 = jogb.ps13
                                 OR jogb.ps13 IS NULL)
                            AND (   joga.ps14 IS NULL
                                 OR joga.ps14 = jogb.ps14
                                 OR jogb.ps14 IS NULL)
                            AND (   joga.ps15 IS NULL
                                 OR joga.ps15 = jogb.ps15
                                 OR jogb.ps15 IS NULL)
                            AND (   joga.ps16 IS NULL
                                 OR joga.ps16 = jogb.ps16
                                 OR jogb.ps16 IS NULL)
                            AND (   joga.ps21 IS NULL
                                 OR joga.ps21 = jogb.ps21
                                 OR jogb.ps21 IS NULL)
                            AND (   joga.ps22 IS NULL
                                 OR joga.ps22 = jogb.ps22
                                 OR jogb.ps22 IS NULL)
                            AND (   joga.ps23 IS NULL
                                 OR joga.ps23 = jogb.ps23
                                 OR jogb.ps23 IS NULL)
                            AND (   joga.ps24 IS NULL
                                 OR joga.ps24 = jogb.ps24
                                 OR jogb.ps24 IS NULL)
                            AND (   joga.ps25 IS NULL
                                 OR joga.ps25 = jogb.ps25
                                 OR jogb.ps25 IS NULL)
                            AND (   joga.ps26 IS NULL
                                 OR joga.ps26 = jogb.ps26
                                 OR jogb.ps26 IS NULL)
                            AND (   joga.ps31 IS NULL
                                 OR joga.ps31 = jogb.ps31
                                 OR jogb.ps31 IS NULL)
                            AND (   joga.ps32 IS NULL
                                 OR joga.ps32 = jogb.ps32
                                 OR jogb.ps32 IS NULL)
                            AND (   joga.ps33 IS NULL
                                 OR joga.ps33 = jogb.ps33
                                 OR jogb.ps33 IS NULL)
                            AND (   joga.ps34 IS NULL
                                 OR joga.ps34 = jogb.ps34
                                 OR jogb.ps34 IS NULL)
                            AND (   joga.ps35 IS NULL
                                 OR joga.ps35 = jogb.ps35
                                 OR jogb.ps35 IS NULL)
                            AND (   joga.ps36 IS NULL
                                 OR joga.ps36 = jogb.ps36
                                 OR jogb.ps36 IS NULL)));

            IF v_compat <> 0
            THEN
               SELECT NVL (joga.ps11, jogb.ps11) ps11,
                      NVL (joga.ps12, jogb.ps12) ps12,
                      NVL (joga.ps13, jogb.ps13) ps13,
                      NVL (joga.ps14, jogb.ps14) ps14,
                      NVL (joga.ps15, jogb.ps15) ps15,
                      NVL (joga.ps16, jogb.ps16) ps16,
                      NVL (joga.ps21, jogb.ps21) ps21,
                      NVL (joga.ps22, jogb.ps22) ps22,
                      NVL (joga.ps23, jogb.ps23) ps23,
                      NVL (joga.ps24, jogb.ps24) ps24,
                      NVL (joga.ps25, jogb.ps25) ps25,
                      NVL (joga.ps26, jogb.ps26) ps26,
                      NVL (joga.ps31, jogb.ps31) ps31,
                      NVL (joga.ps32, jogb.ps32) ps32,
                      NVL (joga.ps33, jogb.ps33) ps33,
                      NVL (joga.ps34, jogb.ps34) ps34,
                      NVL (joga.ps35, jogb.ps35) ps35,
                      NVL (joga.ps36, jogb.ps36) ps36
                 INTO rec
                 FROM (SELECT ps11,
                              ps12,
                              ps13,
                              ps14,
                              ps15,
                              ps16,
                              ps21,
                              ps22,
                              ps23,
                              ps24,
                              ps25,
                              ps26,
                              ps31,
                              ps32,
                              ps33,
                              ps34,
                              ps35,
                              ps36
                         FROM DUAL) joga,
                      (SELECT cr.ps11,
                              cr.ps12,
                              cr.ps13,
                              cr.ps14,
                              cr.ps15,
                              cr.ps16,
                              cr.ps21,
                              cr.ps22,
                              cr.ps23,
                              cr.ps24,
                              cr.ps25,
                              cr.ps26,
                              cr.ps31,
                              cr.ps32,
                              cr.ps33,
                              cr.ps34,
                              cr.ps35,
                              cr.ps36
                         FROM DUAL) jogb
                WHERE (    (   joga.ps11 IS NULL
                            OR joga.ps11 = jogb.ps11
                            OR jogb.ps11 IS NULL)
                       AND (   joga.ps12 IS NULL
                            OR joga.ps12 = jogb.ps12
                            OR jogb.ps12 IS NULL)
                       AND (   joga.ps13 IS NULL
                            OR joga.ps13 = jogb.ps13
                            OR jogb.ps13 IS NULL)
                       AND (   joga.ps14 IS NULL
                            OR joga.ps14 = jogb.ps14
                            OR jogb.ps14 IS NULL)
                       AND (   joga.ps15 IS NULL
                            OR joga.ps15 = jogb.ps15
                            OR jogb.ps15 IS NULL)
                       AND (   joga.ps16 IS NULL
                            OR joga.ps16 = jogb.ps16
                            OR jogb.ps16 IS NULL)
                       AND (   joga.ps21 IS NULL
                            OR joga.ps21 = jogb.ps21
                            OR jogb.ps21 IS NULL)
                       AND (   joga.ps22 IS NULL
                            OR joga.ps22 = jogb.ps22
                            OR jogb.ps22 IS NULL)
                       AND (   joga.ps23 IS NULL
                            OR joga.ps23 = jogb.ps23
                            OR jogb.ps23 IS NULL)
                       AND (   joga.ps24 IS NULL
                            OR joga.ps24 = jogb.ps24
                            OR jogb.ps24 IS NULL)
                       AND (   joga.ps25 IS NULL
                            OR joga.ps25 = jogb.ps25
                            OR jogb.ps25 IS NULL)
                       AND (   joga.ps26 IS NULL
                            OR joga.ps26 = jogb.ps26
                            OR jogb.ps26 IS NULL)
                       AND (   joga.ps31 IS NULL
                            OR joga.ps31 = jogb.ps31
                            OR jogb.ps31 IS NULL)
                       AND (   joga.ps32 IS NULL
                            OR joga.ps32 = jogb.ps32
                            OR jogb.ps32 IS NULL)
                       AND (   joga.ps33 IS NULL
                            OR joga.ps33 = jogb.ps33
                            OR jogb.ps33 IS NULL)
                       AND (   joga.ps34 IS NULL
                            OR joga.ps34 = jogb.ps34
                            OR jogb.ps34 IS NULL)
                       AND (   joga.ps35 IS NULL
                            OR joga.ps35 = jogb.ps35
                            OR jogb.ps35 IS NULL)
                       AND (   joga.ps36 IS NULL
                            OR joga.ps36 = jogb.ps36
                            OR jogb.ps36 IS NULL));
            END IF;

            PIPE ROW (rec);
         END LOOP;
      END IF;

      RETURN;
   END;

   PROCEDURE pr_torto_res (plv01   IN VARCHAR2,
                           plv02   IN VARCHAR2,
                           plv03   IN VARCHAR2 DEFAULT NULL,
                           plv04   IN VARCHAR2 DEFAULT NULL,
                           plv05   IN VARCHAR2 DEFAULT NULL,
                           plv06   IN VARCHAR2 DEFAULT NULL,
                           plv07   IN VARCHAR2 DEFAULT NULL,
                           plv08   IN VARCHAR2 DEFAULT NULL,
                           plv09   IN VARCHAR2 DEFAULT NULL,
                           plv10   IN VARCHAR2 DEFAULT NULL,
                           plv11   IN VARCHAR2 DEFAULT NULL,
                           plv12   IN VARCHAR2 DEFAULT NULL,
                           plv13   IN VARCHAR2 DEFAULT NULL,
                           plv14   IN VARCHAR2 DEFAULT NULL,
                           plv15   IN VARCHAR2 DEFAULT NULL,
                           plv16   IN VARCHAR2 DEFAULT NULL,
                           plv17   IN VARCHAR2 DEFAULT NULL,
                           plv18   IN VARCHAR2 DEFAULT NULL,
                           plv19   IN VARCHAR2 DEFAULT NULL,
                           plv20   IN VARCHAR2 DEFAULT NULL,
                           plv21   IN VARCHAR2 DEFAULT NULL,
                           plv22   IN VARCHAR2 DEFAULT NULL,
                           plv23   IN VARCHAR2 DEFAULT NULL,
                           plv24   IN VARCHAR2 DEFAULT NULL,
                           plv25   IN VARCHAR2 DEFAULT NULL,
                           plv26   IN VARCHAR2 DEFAULT NULL,
                           plv27   IN VARCHAR2 DEFAULT NULL,
                           plv28   IN VARCHAR2 DEFAULT NULL,
                           plv29   IN VARCHAR2 DEFAULT NULL,
                           plv30   IN VARCHAR2 DEFAULT NULL)
   IS
      ps11            VARCHAR2 (1) := NULL;
      ps12            VARCHAR2 (1) := NULL;
      ps13            VARCHAR2 (1) := NULL;
      ps14            VARCHAR2 (1) := NULL;
      ps15            VARCHAR2 (1) := NULL;
      ps16            VARCHAR2 (1) := NULL;
      ps21            VARCHAR2 (1) := NULL;
      ps22            VARCHAR2 (1) := NULL;
      ps23            VARCHAR2 (1) := NULL;
      ps24            VARCHAR2 (1) := NULL;
      ps25            VARCHAR2 (1) := NULL;
      ps26            VARCHAR2 (1) := NULL;
      ps31            VARCHAR2 (1) := NULL;
      ps32            VARCHAR2 (1) := NULL;
      ps33            VARCHAR2 (1) := NULL;
      ps34            VARCHAR2 (1) := NULL;
      ps35            VARCHAR2 (1) := NULL;
      ps36            VARCHAR2 (1) := NULL;
      v_palavra       NUMBER;
      v_palavra_ant   NUMBER;
      v_sql           VARCHAR2 (4000);
      v_exist         NUMBER;
   BEGIN
      v_palavra := 1;

      FOR CR IN (SELECT palavra
                   FROM (SELECT plv01 palavra FROM DUAL
                         UNION
                         SELECT plv02 palavra FROM DUAL
                         UNION
                         SELECT plv03 palavra FROM DUAL
                         UNION
                         SELECT plv04 palavra FROM DUAL
                         UNION
                         SELECT plv05 palavra FROM DUAL
                         UNION
                         SELECT plv06 palavra FROM DUAL
                         UNION
                         SELECT plv07 palavra FROM DUAL
                         UNION
                         SELECT plv08 palavra FROM DUAL
                         UNION
                         SELECT plv09 palavra FROM DUAL
                         UNION
                         SELECT plv10 palavra FROM DUAL
                         UNION
                         SELECT plv11 palavra FROM DUAL
                         UNION
                         SELECT plv12 palavra FROM DUAL
                         UNION
                         SELECT plv13 palavra FROM DUAL
                         UNION
                         SELECT plv14 palavra FROM DUAL
                         UNION
                         SELECT plv15 palavra FROM DUAL
                         UNION
                         SELECT plv16 palavra FROM DUAL
                         UNION
                         SELECT plv17 palavra FROM DUAL
                         UNION
                         SELECT plv18 palavra FROM DUAL
                         UNION
                         SELECT plv19 palavra FROM DUAL
                         UNION
                         SELECT plv20 palavra FROM DUAL
                         UNION
                         SELECT plv21 palavra FROM DUAL
                         UNION
                         SELECT plv22 palavra FROM DUAL
                         UNION
                         SELECT plv23 palavra FROM DUAL
                         UNION
                         SELECT plv24 palavra FROM DUAL
                         UNION
                         SELECT plv25 palavra FROM DUAL
                         UNION
                         SELECT plv26 palavra FROM DUAL
                         UNION
                         SELECT plv27 palavra FROM DUAL
                         UNION
                         SELECT plv28 palavra FROM DUAL
                         UNION
                         SELECT plv29 palavra FROM DUAL
                         UNION
                         SELECT plv30 palavra FROM DUAL)
                  WHERE palavra IS NOT NULL)
      LOOP
         IF v_palavra = 1
         THEN
            v_sql :=
                  'CREATE TABLE TMP1_L as '
               || ' SELECT DISTINCT ps11,ps12,ps13,ps14,ps15,ps16,'
               || ' ps21,ps22,ps23,ps24,ps25,ps26,'
               || ' ps31,ps32,ps33,ps34,ps35,ps36'
               || ' FROM TABLE (pkg_torto.fc_torto('''
               || cr.palavra
               || '''))';

            EXECUTE IMMEDIATE v_sql;
         ELSE
            v_sql :=
                  'SELECT count(*)'
               || ' FROM (SELECT distinct ps11,ps12,ps13,ps14,ps15,ps16,'
               || ' ps21,ps22,ps23,ps24,ps25,ps26,'
               || ' ps31,ps32,ps33,ps34,ps35,ps36'
               || ' FROM TABLE (pkg_torto.fc_torto('''
               || cr.palavra
               || '''))'
               || ') joga,'
               || ' (SELECT ps11,ps12,ps13,ps14,ps15,ps16,'
               || ' ps21,ps22,ps23,ps24,ps25,ps26,'
               || ' ps31,ps32,ps33,ps34,ps35,ps36'
               || ' FROM TMP'
               || v_palavra_ant
               || '_L'
               || ' ) jogb'
               || ' WHERE ( (joga.ps11 IS NULL OR joga.ps11 = jogb.ps11 OR jogb.ps11 IS NULL)'
               || ' AND (joga.ps12 IS NULL OR joga.ps12 = jogb.ps12 OR jogb.ps12 IS NULL)'
               || ' AND (joga.ps13 IS NULL OR joga.ps13 = jogb.ps13 OR jogb.ps13 IS NULL)'
               || ' AND (joga.ps14 IS NULL OR joga.ps14 = jogb.ps14 OR jogb.ps14 IS NULL)'
               || ' AND (joga.ps15 IS NULL OR joga.ps15 = jogb.ps15 OR jogb.ps15 IS NULL)'
               || ' AND (joga.ps16 IS NULL OR joga.ps16 = jogb.ps16 OR jogb.ps16 IS NULL)'
               || ' AND (joga.ps21 IS NULL OR joga.ps21 = jogb.ps21 OR jogb.ps21 IS NULL)'
               || ' AND (joga.ps22 IS NULL OR joga.ps22 = jogb.ps22 OR jogb.ps22 IS NULL)'
               || ' AND (joga.ps23 IS NULL OR joga.ps23 = jogb.ps23 OR jogb.ps23 IS NULL)'
               || ' AND (joga.ps24 IS NULL OR joga.ps24 = jogb.ps24 OR jogb.ps24 IS NULL)'
               || ' AND (joga.ps25 IS NULL OR joga.ps25 = jogb.ps25 OR jogb.ps25 IS NULL)'
               || ' AND (joga.ps26 IS NULL OR joga.ps26 = jogb.ps26 OR jogb.ps26 IS NULL)'
               || ' AND (joga.ps31 IS NULL OR joga.ps31 = jogb.ps31 OR jogb.ps31 IS NULL)'
               || ' AND (joga.ps32 IS NULL OR joga.ps32 = jogb.ps32 OR jogb.ps32 IS NULL)'
               || ' AND (joga.ps33 IS NULL OR joga.ps33 = jogb.ps33 OR jogb.ps33 IS NULL)'
               || ' AND (joga.ps34 IS NULL OR joga.ps34 = jogb.ps34 OR jogb.ps34 IS NULL)'
               || ' AND (joga.ps35 IS NULL OR joga.ps35 = jogb.ps35 OR jogb.ps35 IS NULL)'
               || ' AND (joga.ps36 IS NULL OR joga.ps36 = jogb.ps36 OR jogb.ps36 IS NULL))';

            EXECUTE IMMEDIATE v_sql INTO v_exist;

            IF v_exist > 0
            THEN
               v_sql :=
                     'CREATE TABLE TMP'
                  || v_palavra
                  || ' AS SELECT DISTINCT NVL (joga.ps11, jogb.ps11) ps11,'
                  || ' NVL (joga.ps12, jogb.ps12) ps12,'
                  || ' NVL (joga.ps13, jogb.ps13) ps13,'
                  || ' NVL (joga.ps14, jogb.ps14) ps14,'
                  || ' NVL (joga.ps15, jogb.ps15) ps15,'
                  || ' NVL (joga.ps16, jogb.ps16) ps16,'
                  || ' NVL (joga.ps21, jogb.ps21) ps21,'
                  || ' NVL (joga.ps22, jogb.ps22) ps22,'
                  || ' NVL (joga.ps23, jogb.ps23) ps23,'
                  || ' NVL (joga.ps24, jogb.ps24) ps24,'
                  || ' NVL (joga.ps25, jogb.ps25) ps25,'
                  || ' NVL (joga.ps26, jogb.ps26) ps26,'
                  || ' NVL (joga.ps31, jogb.ps31) ps31,'
                  || ' NVL (joga.ps32, jogb.ps32) ps32,'
                  || ' NVL (joga.ps33, jogb.ps33) ps33,'
                  || ' NVL (joga.ps34, jogb.ps34) ps34,'
                  || ' NVL (joga.ps35, jogb.ps35) ps35,'
                  || ' NVL (joga.ps36, jogb.ps36) ps36'
                  || ' FROM (SELECT distinct ps11,ps12,ps13,ps14,ps15,ps16,'
                  || ' ps21,ps22,ps23,ps24,ps25,ps26,'
                  || ' ps31,ps32,ps33,ps34,ps35,ps36'
                  || ' FROM TABLE (pkg_torto.fc_torto('''
                  || cr.palavra
                  || '''))'
                  || ') joga,'
                  || ' (SELECT ps11,ps12,ps13,ps14,ps15,ps16,'
                  || ' ps21,ps22,ps23,ps24,ps25,ps26,'
                  || ' ps31,ps32,ps33,ps34,ps35,ps36'
                  || ' FROM TMP'
                  || v_palavra_ant
                  || '_L'
                  || ' ) jogb'
                  || ' WHERE ( (joga.ps11 IS NULL OR joga.ps11 = jogb.ps11 OR jogb.ps11 IS NULL)'
                  || ' AND (joga.ps12 IS NULL OR joga.ps12 = jogb.ps12 OR jogb.ps12 IS NULL)'
                  || ' AND (joga.ps13 IS NULL OR joga.ps13 = jogb.ps13 OR jogb.ps13 IS NULL)'
                  || ' AND (joga.ps14 IS NULL OR joga.ps14 = jogb.ps14 OR jogb.ps14 IS NULL)'
                  || ' AND (joga.ps15 IS NULL OR joga.ps15 = jogb.ps15 OR jogb.ps15 IS NULL)'
                  || ' AND (joga.ps16 IS NULL OR joga.ps16 = jogb.ps16 OR jogb.ps16 IS NULL)'
                  || ' AND (joga.ps21 IS NULL OR joga.ps21 = jogb.ps21 OR jogb.ps21 IS NULL)'
                  || ' AND (joga.ps22 IS NULL OR joga.ps22 = jogb.ps22 OR jogb.ps22 IS NULL)'
                  || ' AND (joga.ps23 IS NULL OR joga.ps23 = jogb.ps23 OR jogb.ps23 IS NULL)'
                  || ' AND (joga.ps24 IS NULL OR joga.ps24 = jogb.ps24 OR jogb.ps24 IS NULL)'
                  || ' AND (joga.ps25 IS NULL OR joga.ps25 = jogb.ps25 OR jogb.ps25 IS NULL)'
                  || ' AND (joga.ps26 IS NULL OR joga.ps26 = jogb.ps26 OR jogb.ps26 IS NULL)'
                  || ' AND (joga.ps31 IS NULL OR joga.ps31 = jogb.ps31 OR jogb.ps31 IS NULL)'
                  || ' AND (joga.ps32 IS NULL OR joga.ps32 = jogb.ps32 OR jogb.ps32 IS NULL)'
                  || ' AND (joga.ps33 IS NULL OR joga.ps33 = jogb.ps33 OR jogb.ps33 IS NULL)'
                  || ' AND (joga.ps34 IS NULL OR joga.ps34 = jogb.ps34 OR jogb.ps34 IS NULL)'
                  || ' AND (joga.ps35 IS NULL OR joga.ps35 = jogb.ps35 OR jogb.ps35 IS NULL)'
                  || ' AND (joga.ps36 IS NULL OR joga.ps36 = jogb.ps36 OR jogb.ps36 IS NULL))';

               EXECUTE IMMEDIATE v_sql;

               v_sql :=
                     'CREATE TABLE TMP'
                  || v_palavra
                  || '_L'
                  || ' AS SELECT * FROM TMP'
                  || v_palavra
                  || ' WHERE LENGTH (PS11||PS12||PS13||PS14||PS15||PS16||'
                  || '              PS21||PS22||PS23||PS24||PS25||PS26||'
                  || '              PS31||PS32||PS33||PS34||PS35||PS36) <= '
                  || '              (SELECT MIN (LENGTH (PS11||PS12||PS13||PS14||PS15||PS16||'
                  || '              PS21||PS22||PS23||PS24||PS25||PS26||'
                  || '              PS31||PS32||PS33||PS34||PS35||PS36)) FROM TMP'
                  || v_palavra
                  || ')';

               EXECUTE IMMEDIATE v_sql;
            ELSE
               v_palavra := v_palavra - 1;
            END IF;
         END IF;

         v_palavra := v_palavra + 1;
         v_palavra_ant := v_palavra - 1;
      END LOOP;

      v_sql := 'DELETE FROM TMP_F';

      EXECUTE IMMEDIATE v_sql;

      v_sql :=
            'INSERT INTO TMP_F (ps11,ps12,ps13,ps14,ps15,ps16,'
         || '  ps21,ps22,ps23,ps24,ps25,ps26,'
         || '  ps31,ps32,ps33,ps34,ps35,ps36)'
         || '  SELECT ps11,ps12,ps13,ps14,ps15,ps16,'
         || '  ps21,ps22,ps23,ps24,ps25,ps26,'
         || '  ps31,ps32,ps33,ps34,ps35,ps36 FROM TMP'
         || v_palavra
         || '_L';

      EXECUTE IMMEDIATE v_sql;
   END;
END;
/