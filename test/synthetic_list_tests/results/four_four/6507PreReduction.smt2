
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
(assert (and (= l2 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l1 Nil) (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(check-sat)
