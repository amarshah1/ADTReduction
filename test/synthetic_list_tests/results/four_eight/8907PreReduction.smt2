
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
(assert (not (= l0 l0)) )
(assert (is-Nil l3) )
(assert (= l3 Nil) )
(assert (not (= l1 l1)) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(assert (and (= l3 l3) (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l3 l3)) )
(check-sat)
