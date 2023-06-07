
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
(assert (and (= l1 l0) (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (and (= l1 l2) (is-Cons Nil)) )
(assert (= l1 l1) )
(assert (or (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l3 l0) (is-Nil l0)) )
(assert (not (= l2 l2)) )
(check-sat)
