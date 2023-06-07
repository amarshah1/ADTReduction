
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
(assert (and (= l0 Nil) (is-Cons Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l1 l0)) )
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(assert (not (= l0 l0)) )
(assert (or (= l2 l1) (= l1 Nil) (is-Nil l1)) )
(assert (not (= l1 l3)) )
(check-sat)
