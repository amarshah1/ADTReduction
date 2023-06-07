
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
(assert (is-Cons l2) )
(assert (and (is-Cons Nil) (= l2 l3) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l1 l2) (= l1 Nil)) )
(assert (and (= l2 l1) (is-Cons Nil) (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l0)) )
(assert (not (= l3 l0)) )
(assert (= l2 Nil) )
(check-sat)
