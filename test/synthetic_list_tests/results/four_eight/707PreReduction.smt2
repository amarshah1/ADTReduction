
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
(assert (and (is-Cons Nil) (= l0 l2)) )
(assert (and (is-Cons l3) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l1 l1) (is-Cons Nil) (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l1 Nil)) )
(check-sat)
