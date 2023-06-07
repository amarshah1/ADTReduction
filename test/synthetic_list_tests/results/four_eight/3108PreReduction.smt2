
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
(assert (= l1 l2) )
(assert (is-Nil l1) )
(assert (not (is-Nil l0)) )
(assert (and (is-Cons Nil) (= l1 l0)) )
(assert (or (= l1 l1) (is-Cons l3) (= l1 l0) (= l2 Nil)) )
(assert (= l0 l2) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l2 Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(check-sat)
