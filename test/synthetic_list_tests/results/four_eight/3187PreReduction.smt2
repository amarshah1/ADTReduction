
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
(assert (= l1 l3) )
(assert (or (= l3 Nil) (= l2 l3)) )
(assert (not (= l1 l0)) )
(assert (is-Cons l1) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l2) )
(assert (and (= l2 l2) (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Nil l1) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)