
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
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (or (is-Nil l2) (= l0 l1)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (not (= l1 l0)) )
(assert (= l2 l2) )
(check-sat)