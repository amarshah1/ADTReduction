
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
(assert (or (is-Cons Nil) (is-Nil l1)) )
(assert (or (= l2 l0) (= l1 l3) (is-Nil l1)) )
(assert (not (= l1 l3)) )
(assert (not (is-Nil l3)) )
(assert (= l3 l3) )
(assert (is-Cons Nil) )
(assert (= l2 l2) )
(assert (or (= l3 Nil) (= l2 l3) (= l3 Nil)) )
(check-sat)
