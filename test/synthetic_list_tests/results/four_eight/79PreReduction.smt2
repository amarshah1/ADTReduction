
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
(assert (or (is-Nil Nil) (= l2 l1)) )
(assert (or (is-Nil Nil) (= l3 Nil) (= l3 l0)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l2 l1) (= l1 Nil) (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (not (is-Cons l2)) )
(check-sat)
