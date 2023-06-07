
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
(assert (and (= l2 l2) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (is-Cons l1) (= l1 l3)) )
(assert (is-Nil l3) )
(check-sat)