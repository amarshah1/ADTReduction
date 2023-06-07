
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
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (= l0 l3) )
(assert (or (= l2 Nil) (= l3 l1) (= l1 l1) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l0 l1)) )
(assert (and (is-Nil Nil) (is-Nil l1) (= l3 Nil) (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(check-sat)
