
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
(assert (and (= l2 Nil) (is-Nil Nil) (= l0 l0)) )
(assert (and (is-Cons l3) (= l0 Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l0)) )
(assert (or (= l3 Nil) (= l1 l0)) )
(assert (and (= l3 l3) (= l3 l2) (is-Nil Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 l2) )
(check-sat)