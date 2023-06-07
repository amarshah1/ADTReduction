
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
(assert (and (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l3 l1) (= l0 Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Nil l3) )
(assert (not (= l0 Nil)) )
(check-sat)
