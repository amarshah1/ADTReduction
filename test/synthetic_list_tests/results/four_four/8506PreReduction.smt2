
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
(assert (or (= l0 Nil) (= l0 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l3 Nil) (is-Nil l1)) )
(assert (and (is-Cons Nil) (= l1 l2) (= l3 l1) (= l1 l3)) )
(assert (not (is-Cons l1)) )
(check-sat)
