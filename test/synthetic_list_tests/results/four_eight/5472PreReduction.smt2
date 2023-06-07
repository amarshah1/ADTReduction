
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
(assert (= l0 Nil) )
(assert (and (= l1 l1) (= l1 l3)) )
(assert (or (= l3 Nil) (is-Nil l3) (= l1 Nil) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l3 Nil) (= l2 l3)) )
(assert (is-Cons l3) )
(check-sat)
