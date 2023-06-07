
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
(assert (not (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (is-Cons l2) (= l3 l0)) )
(assert (and (is-Nil l2) (is-Cons l1) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l1 l1) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l1 l1) (= l0 l2) (= l0 l2) (= l1 l2)) )
(check-sat)