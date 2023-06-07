
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
(assert (not (= l3 l2)) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (and (is-Nil l3) (= l0 l2)) )
(assert (and (= l0 l3) (is-Cons Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l0 l1)) )
(assert (not (= l2 Nil)) )
(check-sat)
