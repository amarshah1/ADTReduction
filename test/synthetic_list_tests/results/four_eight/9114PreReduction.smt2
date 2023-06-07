
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
(assert (is-Cons l0) )
(assert (= l2 l0) )
(assert (is-Cons Nil) )
(assert (and (= l0 l0) (= l2 Nil)) )
(assert (and (= l2 l1) (= l3 l1) (= l3 l0) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(check-sat)
