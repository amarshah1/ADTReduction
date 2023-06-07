
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
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l1 l0)) )
(assert (= l3 Nil) )
(assert (not (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (not (= l1 l0)) )
(assert (and (= l2 Nil) (is-Nil l3)) )
(check-sat)