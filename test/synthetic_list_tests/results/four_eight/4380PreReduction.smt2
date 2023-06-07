
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
(assert (= l1 l1) )
(assert (and (= l3 l1) (is-Cons l3) (= l1 Nil) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (not (= l1 l0)) )
(assert (and (is-Nil Nil) (is-Cons l0)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (= l3 l0) )
(check-sat)
