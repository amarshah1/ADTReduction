
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
(assert (not (= l1 Nil)) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l0 Nil) (= l1 l3) (is-Nil l0)) )
(assert (not (= l2 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l3 Nil)) )
(assert (and (= l3 l3) (is-Cons Nil) (= l2 l0) (is-Cons Nil)) )
(assert (not (is-Nil l1)) )
(check-sat)
