
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
(assert (not (is-Nil Nil)) )
(assert (not (= l2 l1)) )
(assert (and (= l3 Nil) (= l3 l0) (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (not (= l2 l1)) )
(assert (is-Nil l1) )
(check-sat)
