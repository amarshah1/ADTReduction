
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (= l2 Nil) (is-Cons Nil) (= l3 l1) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (not (is-Cons l2)) )
(check-sat)
