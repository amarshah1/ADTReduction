
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
(assert (is-Cons l2) )
(assert (not (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 l3) (is-Cons Nil) (is-Cons Nil)) )
(assert (= l3 l2) )
(assert (= l0 l3) )
(assert (is-Nil l0) )
(check-sat)
