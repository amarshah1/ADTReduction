
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
(assert (= l3 l1) )
(assert (or (is-Cons l2) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 l3) (= l3 l3) (= l0 Nil) (is-Nil l0)) )
(assert (not (= l2 l1)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons Nil)) )
(check-sat)