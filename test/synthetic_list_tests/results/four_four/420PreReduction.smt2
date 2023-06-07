
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
(assert (is-Nil l2) )
(assert (and (is-Cons Nil) (is-Cons l1) (= l0 l3) (= l2 l3)) )
(assert (and (= l0 Nil) (= l3 Nil)) )
(assert (or (= l3 l0) (= l1 l3) (= l3 Nil) (= l2 Nil)) )
(check-sat)