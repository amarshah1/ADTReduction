
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
(assert (and (= l1 Nil) (= l2 l0) (= l3 l3)) )
(assert (= l2 l1) )
(assert (is-Cons Nil) )
(assert (and (= l1 l3) (= l2 Nil) (is-Cons Nil) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l2 l2) (= l1 Nil) (= l1 Nil) (is-Nil l0)) )
(check-sat)