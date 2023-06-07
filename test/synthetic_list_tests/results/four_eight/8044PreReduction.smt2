
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
(assert (= l1 Nil) )
(assert (is-Nil l3) )
(assert (= l0 Nil) )
(assert (or (= l2 l3) (is-Cons Nil)) )
(assert (not (is-Cons l0)) )
(assert (= l0 Nil) )
(assert (= l1 l2) )
(assert (is-Cons l3) )
(check-sat)
