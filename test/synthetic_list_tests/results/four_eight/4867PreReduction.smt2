
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
(assert (and (= l3 l0) (is-Cons Nil) (= l3 Nil) (is-Nil l3)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 l2) (= l1 Nil) (= l0 Nil) (= l3 l2)) )
(assert (is-Cons l3) )
(assert (not (= l3 l0)) )
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (or (= l3 l1) (is-Cons l3) (= l3 l3) (= l0 l0)) )
(check-sat)
