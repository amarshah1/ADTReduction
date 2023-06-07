
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
(assert (or (= l0 Nil) (= l0 l0) (is-Cons Nil) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l0 l0) (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (or (is-Nil l3) (= l3 l3) (= l2 Nil) (is-Cons Nil)) )
(assert (= l3 l2) )
(assert (and (= l2 l2) (= l1 Nil) (= l0 Nil) (= l3 l0)) )
(assert (= l2 Nil) )
(check-sat)
