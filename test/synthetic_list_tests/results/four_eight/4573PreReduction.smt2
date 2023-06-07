
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
(assert (not (= l0 Nil)) )
(assert (and (= l0 l0) (= l2 l3) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l1 Nil) (is-Cons l0) (= l2 l0) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l1 Nil) (= l0 l1)) )
(assert (= l3 Nil) )
(assert (= l2 Nil) )
(assert (or (= l1 l1) (= l0 Nil) (is-Cons l2)) )
(assert (= l3 Nil) )
(check-sat)
