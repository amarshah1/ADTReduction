
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
(assert (is-Cons l3) )
(assert (or (= l0 l3) (= l1 l2) (= l0 l2) (is-Cons l1)) )
(assert (= l3 l2) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (or (= l0 Nil) (= l1 Nil) (= l0 l1) (is-Cons Nil)) )
(check-sat)
