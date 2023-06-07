
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
(assert (not (= l0 l0)) )
(assert (and (= l1 Nil) (= l0 l1) (= l2 Nil) (= l1 Nil)) )
(assert (or (= l0 l1) (is-Cons Nil) (is-Cons Nil) (= l1 l0)) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (and (is-Cons Nil) (= l3 Nil) (= l0 l1)) )
(assert (= l3 Nil) )
(check-sat)