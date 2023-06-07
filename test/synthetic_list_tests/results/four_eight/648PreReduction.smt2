
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
(assert (and (= l3 Nil) (= l1 Nil)) )
(assert (and (= l0 l0) (is-Cons Nil) (is-Nil Nil) (= l1 l1)) )
(assert (is-Cons l2) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l3)) )
(assert (and (= l3 l2) (= l2 l2) (= l0 l1)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l1 l3) (is-Nil l3)) )
(check-sat)
