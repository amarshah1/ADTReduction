
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
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (not (is-Cons l1)) )
(assert (and (= l1 Nil) (is-Cons l1) (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l1 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (is-Cons l1) (= l2 Nil) (is-Nil Nil) (= l2 l1)) )
(assert (not (is-Nil Nil)) )
(check-sat)
