open Assertions
open Ps1

(* EXERCISE 1 *)
(* Given test cases *)
TEST_UNIT "is_mon_inc_test1" = assert_true ((is_mon_inc [1;2;3;6;9]) = true)
TEST_UNIT "is_mon_inc_test2" = assert_true ((is_mon_inc [1;3;5;7;5;9]) = false)
TEST_UNIT "is_mon_inc_test3" = assert_true ((is_mon_inc [1;1;2;3;4;4]) = true)
(* New test cases *)
TEST_UNIT "is_mon_inc_test4" = assert_true ((is_mon_inc [1]) = true)
TEST_UNIT "is_mon_inc_test5" = assert_true ((is_mon_inc [42;5]) = false)
TEST_UNIT "is_mon_inc_test6" = assert_true ((is_mon_inc [5;42]) = true)
TEST_UNIT "is_mon_inc_test7" = assert_true ((is_mon_inc [13;13]) = true)
TEST_UNIT "is_mon_inc_test8" = assert_true ((is_mon_inc [1;10;3]) = false)
TEST_UNIT "is_mon_inc_test9" = assert_true ((is_mon_inc [5;4;3;2;1]) = false)
TEST_UNIT "is_mon_inc_test10" = assert_true ((is_mon_inc []) = true)
TEST_UNIT "is_mon_inc_test11" = assert_true ((is_mon_inc [10000]) = true)


(* EXERCISE 2 *)
(* Given test cases *)
TEST_UNIT "is_unimodal_test1" = assert_true ((is_unimodal [1;2;3;6;9;5;4]) = true)
TEST_UNIT "is_unimodal_test2" = assert_true ((is_unimodal [1;3;5;7;5;6]) = false)
TEST_UNIT "is_unimodal_test3" = assert_true ((is_unimodal [1;1;2;3;4;4;3;2;2;-1]) = true)
TEST_UNIT "is_unimodal_test4" = assert_true ((is_unimodal []) = true)
TEST_UNIT "is_unimodal_test5" = assert_true ((is_unimodal [1;1;1]) = true)
TEST_UNIT "is_unimodal_test6" = assert_true ((is_unimodal [1;2]) = true)
TEST_UNIT "is_unimodal_test7" = assert_true ((is_unimodal [2;1]) = true)
(* New test cases *)
TEST_UNIT "is_unimodal_test9" = assert_true ((is_unimodal [0]) = true)
TEST_UNIT "is_unimodal_test10" = assert_true ((is_unimodal [0;0;0]) = true)
TEST_UNIT "is_unimodal_test11" = assert_true ((is_unimodal [-4;-3;-4]) = true)
TEST_UNIT "is_unimodal_test12" = assert_true ((is_unimodal [-3;-2;-1;0]) = true)
TEST_UNIT "is_unimodal_test13" = assert_true ((is_unimodal [-2;0;2;-3]) = true)
TEST_UNIT "is_unimodal_test14" = assert_true ((is_unimodal [0;1;2;1;0;1]) = false)


(* EXERCISE 3 *)
(* Given test cases *)
TEST_UNIT "powerset_test1" = assert_true ((powerset [1;2;3]) = [[1;2;3];[1;2];[1;3];[1];[2;3];[2];[3];[]])
TEST_UNIT "powerset_test2" = assert_true ((powerset []) = [[]])
(* New test cases *)
TEST_UNIT "powerset_test3" = assert_true ((powerset [1]) = [[1];[]])
TEST_UNIT "powerset_test4" = assert_true ((powerset [4;1]) = [[4;1];[4];[1];[]])
TEST_UNIT "powerset_test5" = assert_true ((powerset [10;9;8;7]) = [[10;9;8;7];[10;9;8];[10;9;7];[10;9];[10;8;7];[10;8];[10;7];[10];[9;8;7];[9;8];[9;7];[9];[8;7];[8];[7];[]])
TEST_UNIT "powerset_test6" = assert_true ((powerset [1;1;1]) = [[1;1;1];[1;1];[1;1];[1];[1;1];[1];[1];[]] )
TEST_UNIT "powerset_test7" = assert_true ((powerset [4;2;6;2;6;4]) = [[4;2;6;2;6;4];[4;2;6;2;6];[4;2;6;2;4];[4;2;6;2];[4;2;6;6;4];[4;2;6;6];[4;2;6;4];[4;2;6];[4;2;2;6;4];[4;2;2;6];[4;2;2;4];[4;2;2];[4;2;6;4];[4;2;6];[4;2;4];[4;2];[4;6;2;6;4];[4;6;2;6];[4;6;2;4];[4;6;2];[4;6;6;4];[4;6;6];[4;6;4];[4;6];[4;2;6;4];[4;2;6];[4;2;4];[4;2];[4;6;4];[4;6];[4;4];[4];[2;6;2;6;4];[2;6;2;6];[2;6;2;4];[2;6;2];[2;6;6;4];[2;6;6];[2;6;4];[2;6];[2;2;6;4];[2;2;6];[2;2;4];[2;2];[2;6;4];[2;6];[2;4];[2];[6;2;6;4];[6;2;6];[6;2;4];[6;2];[6;6;4];[6;6];[6;4];[6];[2;6;4];[2;6];[2;4];[2];[6;4];[6];[4];[]])


(* EXERCISE 4 *)
(* Given test cases *)
TEST_UNIT "rev_int_test1" = assert_true ((rev_int 1234) = 4321)
TEST_UNIT "rev_int_test2" = assert_true ((rev_int 4) = 4)
TEST_UNIT "rev_int_test3" = assert_true ((rev_int (-1234)) = (-4321))
TEST_UNIT "rev_int_test4" = assert_true ((rev_int (-10)) = (-1))
TEST_UNIT "rev_int_test5" = assert_true ((rev_int 111111111) = 111111111)
(* New test cases *)
TEST_UNIT "rev_int_test6" = assert_true ((rev_int 1010101) = 1010101)
TEST_UNIT "rev_int_test7" = assert_true ((rev_int 0001) = 1)
TEST_UNIT "rev_int_test8" = assert_true ((rev_int 1000) = 1)
TEST_UNIT "rev_int_test9" = assert_true ((rev_int (-0001)) = (-1))
TEST_UNIT "rev_int_test10" = assert_true ((rev_int (-1000)) = (-1))


(* EXERCISE 5 *)
(* Given test cases *)
TEST_UNIT "unflatten_test1" = assert_true ((unflatten (-1) []) = None)
TEST_UNIT "unflatten_test2" = assert_true ((unflatten 0 [1;2;3;4;5;6]) = None)
TEST_UNIT "unflatten_test3" = assert_true ((unflatten 2 [1;2;3;4;5;6]) = Some [[1;2];[3;4];[5;6]])
TEST_UNIT "unflatten_test4" = assert_true ((unflatten 3 [1;2;3;4;5;6;7;8]) = Some [[1;2;3];[4;5;6];[7;8]])
TEST_UNIT "unflatten_test5" = assert_true ((unflatten 6 [1;2;3;4;5;6]) = Some [[1;2;3;4;5;6]])
TEST_UNIT "unflatten_test6" = assert_true ((unflatten 7 [1;2;3;4;5;6]) = Some [[1;2;3;4;5;6]])
(* New test cases *)
TEST_UNIT "unflatten_test7" = assert_true ((unflatten 1000 ['c';'s';'3';'1';'1';'0']) = Some [['c';'s';'3';'1';'1';'0']])
TEST_UNIT "unflatten_test8" = assert_true ((unflatten 2 ['c';'s';'3';'1';'1';'0']) = Some [['c';'s'];['3';'1'];['1';'0']])
TEST_UNIT "unflatten_test9" = assert_true ((unflatten 3 ['c';'s';'3';'1';'1';'0']) = Some [['c';'s';'3'];['1';'1';'0']])
TEST_UNIT "unflatten_test10" = assert_true ((unflatten 4 ['c';'s';'3';'1';'1';'0']) = Some [['c';'s';'3';'1'];['1';'0']])
TEST_UNIT "unflatten_test11" = assert_true ((unflatten 5 [true;false;true;true;false;false;false;true]) = Some [[true;false;true;true;false];[false;false;true]] )
TEST_UNIT "unflatten_test12" = assert_true ((unflatten 1 ["panda";"eats";"shoots";"and";"leaves"]) = Some [["panda"];["eats"];["shoots"];["and"];["leaves"]])


(* EXERCISE 6 *)
(* Given test cases *)
TEST_UNIT "int_of_roman_test1" = assert_true ((int_of_roman [I;I;I]) = 3)
TEST_UNIT "int_of_roman_test2" = assert_true ((int_of_roman [X;L;I;I]) = 42)
TEST_UNIT "int_of_roman_test3" = assert_true ((int_of_roman [M;C;M;X;C;I;X]) = 1999)
(* New test cases *)
TEST_UNIT "int_of_roman_test4" = assert_true ((int_of_roman []) = 0)
TEST_UNIT "int_of_roman_test5" = assert_true ((int_of_roman [V;I;I]) = 7)
TEST_UNIT "int_of_roman_test6" = assert_true ((int_of_roman [M]) = 1000)
TEST_UNIT "int_of_roman_test7" = assert_true ((int_of_roman [X;I;V]) = 14)
TEST_UNIT "int_of_roman_test8" = assert_true ((int_of_roman [C;C;C;X;L;I;X]) = 349)