
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
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l3 Nil) (= l0 l3) (= l1 l2) (= l1 Nil)) )
(assert (is-Cons l0) )
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
