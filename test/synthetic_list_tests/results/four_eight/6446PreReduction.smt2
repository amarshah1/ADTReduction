
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
(assert (or (= l1 Nil) (= l0 l2)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (and (= l3 Nil) (is-Cons l1)) )
(assert (or (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons l1) )
(check-sat)