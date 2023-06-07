
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
(assert (and (= l3 l3) (is-Nil l3)) )
(assert (and (is-Cons Nil) (= l1 l0) (is-Cons Nil) (= l2 l2)) )
(assert (not (= l3 l1)) )
(check-sat)
