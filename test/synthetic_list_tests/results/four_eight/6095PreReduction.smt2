
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
(assert (is-Nil Nil) )
(assert (and (= l1 l1) (= l1 Nil) (is-Cons l3)) )
(assert (is-Cons l3) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (= l2 l3) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l1 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(check-sat)
