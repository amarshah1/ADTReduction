
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
(assert (or (is-Cons Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Cons l2) )
(assert (= l3 l1) )
(assert (= l1 Nil) )
(assert (is-Cons l3) )
(assert (= l2 Nil) )
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 l3) (= l3 Nil)) )
(check-sat)