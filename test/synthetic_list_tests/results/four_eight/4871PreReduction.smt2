
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
(assert (not (= l0 Nil)) )
(assert (not (= l1 l1)) )
(assert (and (is-Cons Nil) (= l1 Nil)) )
(assert (is-Nil l2) )
(assert (or (= l2 l2) (is-Cons Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil l2) )
(check-sat)
