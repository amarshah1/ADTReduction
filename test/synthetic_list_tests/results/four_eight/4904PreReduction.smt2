
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
(assert (or (= l1 l3) (= l3 l0) (= l1 Nil) (= l1 l2)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l1 l0) (= l2 Nil)) )
(assert (not (= l3 l3)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l0)) )
(check-sat)
