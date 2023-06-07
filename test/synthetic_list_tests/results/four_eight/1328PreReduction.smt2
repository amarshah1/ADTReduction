
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
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l1) (= l3 Nil) (= l1 Nil) (= l0 l0)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l1 l1)) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l3 l0) (= l2 l2)) )
(assert (and (is-Cons l0) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(check-sat)
